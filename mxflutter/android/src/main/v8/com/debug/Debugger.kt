package com.debug

import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer
import com.facebook.stetho.inspector.jsonrpc.JsonRpcResult
import com.facebook.stetho.inspector.network.NetworkPeerManager
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsMethod
import com.facebook.stetho.json.ObjectMapper
import com.mojitox.mxflutter.MXFlutterPlugin
import org.json.JSONObject
import java.lang.IllegalArgumentException
import java.lang.RuntimeException
import com.facebook.stetho.inspector.protocol.module.Debugger as FacebookDebuggerStub

internal class Debugger(
    private val scriptSourceProvider: ScriptSourceProvider
) : FacebookDebuggerStub() {
    var dtoMapper: ObjectMapper = ObjectMapper()

    private var v8Messenger: V8Messenger? = null
    private var connectedPeer: JsonRpcPeer? = null
    private val breakpointsAdded = mutableListOf<String>()

    fun initialize(v8Messenger: V8Messenger) {
        this.v8Messenger = v8Messenger
    }

    internal fun onScriptsChanged() {
        scriptSourceProvider.allScriptIds
                .map { ScriptParsedEvent(it) }
                .forEach { connectedPeer?.invokeMethod(Protocol.Debugger.ScriptParsed, it, null) }
    }

    internal fun onScriptsChanged(scriptsName: String) {
        val scriptParsedEvent = ScriptParsedEvent(scriptsName)
        connectedPeer?.invokeMethod(Protocol.Debugger.ScriptParsed, scriptParsedEvent, null)
    }

    @ChromeDevtoolsMethod
    override fun enable(peer: JsonRpcPeer, params: JSONObject?) {
        runStethoSafely {
            connectedPeer = peer

            onScriptsChanged()

            peer.registerDisconnectReceiver(::onDisconnect)
        }
        v8Messenger?.setDebuggerConnected(true)
    }

    private fun execute(action: () -> Unit) {
        MXFlutterPlugin.get().jsExecutor.jobExecutor.scheduler.execute(action)
    }

    private fun onDisconnect() {
        runStethoSafely {
            // Remove added breakpoints
            breakpointsAdded.forEach { breakpointId ->
                execute {
                    v8Messenger?.sendMessage(
                            Protocol.Debugger.RemoveBreakpoint,
                            JSONObject().put("breakpointId", breakpointId))
                }
            }
            breakpointsAdded.clear()

            NetworkPeerManager.getInstanceOrNull()?.removePeer(connectedPeer)
            connectedPeer = null

            v8Messenger?.setDebuggerConnected(false)
        }
    }

    @Suppress("UNUSED_PARAMETER")
    @ChromeDevtoolsMethod
    fun evaluateOnCallFrame(peer: JsonRpcPeer, params: JSONObject?): JsonRpcResult? {
        val method = Protocol.Debugger.EvaluateOnCallFrame
        val result = v8Messenger?.getV8Result(method, params)
        return EvaluateOnCallFrameResult(JSONObject(result))
    }

    @Suppress("UNUSED_PARAMETER")
    @ChromeDevtoolsMethod
    fun setSkipAllPauses(peer: JsonRpcPeer, params: JSONObject?) {
        v8Messenger?.sendMessage(Protocol.Debugger.SetSkipAllPauses, JSONObject().put("skip", params?.getBoolean("skipped")), true)
    }

    @ChromeDevtoolsMethod
    override fun disable(peer: JsonRpcPeer, params: JSONObject?) {
        v8Messenger?.setDebuggerConnected(false)
    }

    @Suppress("UNUSED_PARAMETER")
    @ChromeDevtoolsMethod
    fun getScriptSource(peer: JsonRpcPeer, params: JSONObject): JsonRpcResult? {
        return runStethoAndV8Safely {
            try {
                val request = dtoMapper.convertValue(params, GetScriptSourceRequest::class.java)
                val scriptSource = scriptSourceProvider.getSource(request.scriptId!!)
                GetScriptSourceResponse(scriptSource)
            } catch (e: IllegalArgumentException) {
                GetScriptSourceResponse(e.stackTrace.toString())
            } catch (e: RuntimeException) {
                GetScriptSourceResponse(e.stackTrace.toString())
            }
        }
    }

    @Suppress("UNUSED_PARAMETER")
    @ChromeDevtoolsMethod
    fun setBreakpointByUrl(peer: JsonRpcPeer, params: JSONObject): SetBreakpointByUrlResponse? {
        val request = dtoMapper.convertValue(params, SetBreakpointByUrlRequest::class.java)
        request.url = request.scriptId
        runStethoAndV8Safely {
            execute {
                v8Messenger?.sendMessage(
                        Protocol.Debugger.SetBreakpointByUrl,
                        dtoMapper.convertValue(request, JSONObject::class.java)
                )
            }
        }
        val response = SetBreakpointByUrlResponse(request)
        // Save breakpoint to remove on disconnect
        breakpointsAdded.add(response.breakpointId)
        return response
    }

    @Suppress("unused", "UNUSED_PARAMETER")
    @ChromeDevtoolsMethod
    fun removeBreakpoint(peer: JsonRpcPeer, params: JSONObject) {
        runStethoAndV8Safely {
            execute {
                v8Messenger?.sendMessage(
                        Protocol.Debugger.RemoveBreakpoint,
                        params
                )
            }
        }
        breakpointsAdded.remove(params.getString("breakpointId"))
    }

    @Suppress("unused", "UNUSED_PARAMETER")
    @ChromeDevtoolsMethod
    fun setBreakpointsActive(peer: JsonRpcPeer, params: JSONObject) {
        runStethoAndV8Safely {
            execute {
                v8Messenger?.sendMessage(Protocol.Debugger.SetBreakpointsActive, params)
            }
        }
    }

    /**
     * Pass through to J2V8 methods
     */
    @Suppress("unused", "UNUSED_PARAMETER")
    @ChromeDevtoolsMethod
    fun resume(peer: JsonRpcPeer, params: JSONObject?) {
        v8Messenger?.sendMessage(Protocol.Debugger.Resume, params, true)
    }

    @Suppress("unused", "UNUSED_PARAMETER")
    @ChromeDevtoolsMethod
    fun pause(peer: JsonRpcPeer, params: JSONObject?) {
        v8Messenger?.sendMessage(Protocol.Debugger.Pause, params, true)
    }

    @Suppress("unused", "UNUSED_PARAMETER")
    @ChromeDevtoolsMethod
    fun stepOver(peer: JsonRpcPeer, params: JSONObject?) {
        v8Messenger?.sendMessage(Protocol.Debugger.StepOver, params, true)
    }

    @Suppress("unused", "UNUSED_PARAMETER")
    @ChromeDevtoolsMethod
    fun stepInto(peer: JsonRpcPeer, params: JSONObject?) {
        v8Messenger?.sendMessage(Protocol.Debugger.StepInto, params, true)
    }

    @Suppress("unused", "UNUSED_PARAMETER")
    @ChromeDevtoolsMethod
    fun stepOut(peer: JsonRpcPeer, params: JSONObject?) {
        v8Messenger?.sendMessage(Protocol.Debugger.StepOut, params, true)
    }

    private fun <T> runStethoSafely(action: () -> T): T? {
        return try {
            action()
        } catch (e: Throwable) { // not Exception as V8 throws Error
            null
        }
    }

    private fun <T> runStethoAndV8Safely(action: () -> T): T? {
        return runStethoSafely {
            action()
        }
    }

    companion object {
        const val TAG = "Debugger"
    }
}
