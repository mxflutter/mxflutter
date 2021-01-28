package com.debug

import com.eclipsesource.v8.V8
import com.eclipsesource.v8.inspector.V8Inspector
import com.eclipsesource.v8.inspector.V8InspectorDelegate
import com.facebook.stetho.inspector.network.NetworkPeerManager
import com.facebook.stetho.json.ObjectMapper
import org.json.JSONObject
import java.util.Collections
import java.util.concurrent.atomic.AtomicInteger
import kotlin.collections.LinkedHashMap

class V8Messenger : V8InspectorDelegate {
    private val dtoMapper: ObjectMapper = ObjectMapper()
    private val chromeMessageQueue = Collections.synchronizedMap(LinkedHashMap<String, JSONObject>())
    private val v8ScriptMap = mutableMapOf<String, String>()
    private val v8MessageQueue = Collections.synchronizedMap(LinkedHashMap<String, JSONObject?>())
    private val pendingMessageQueue = Collections.synchronizedList(mutableListOf<PendingResponse>())
    private val nextDispatchId = AtomicInteger(0)
    private var debuggerState = DebuggerState.Disconnected
    private var v8: V8
    private var actions: String? = null
    private var v8Inspector: V8Inspector? = null

    constructor(v8: V8) {
        this.v8 = v8
        v8Inspector = V8Inspector.createV8Inspector(v8, this, TAG)
    }

    fun getV8Result(method: String, params: JSONObject?): String? {
        val pendingMessage = PendingResponse(method, nextDispatchId.incrementAndGet())
        pendingMessageQueue.add(pendingMessage)

        v8MessageQueue[method] = params ?: JSONObject()
        while (pendingMessage.response.isNullOrBlank()) {
            // wait for response from server
        }
        pendingMessageQueue.remove(pendingMessage)
        return pendingMessage.response
    }

    override fun waitFrontendMessageOnPause() {
        if (debuggerState != DebuggerState.Paused) {
            // If we haven't attached to chrome yet, resume code (or else we're stuck)
            dispatchMessage(Protocol.Debugger.Resume)
        } else {
            // Check for messages to send to J2V8
            if (v8MessageQueue.any()) {
                for ((k, v) in v8MessageQueue) {
                    dispatchMessage(k, v)
                }
                v8MessageQueue.clear()
            }
            waitFrontendMessageToChrome()
        }
    }

    private fun waitFrontendMessageToChrome() {
        // Check for messages to send to Chrome DevTools
        if (chromeMessageQueue.any()) {
            val networkPeerManager = NetworkPeerManager.getInstanceOrNull()
            if (networkPeerManager?.hasRegisteredPeers() == true) {
                for ((k, v) in chromeMessageQueue) {
                    networkPeerManager.sendNotificationToPeers(k, v)
                }
            } else {
                // We can't send messages to chrome if it's not attached (networkPeerManager null) so resume debugger
                dispatchMessage(Protocol.Debugger.Resume)
            }
            chromeMessageQueue.clear()
        }
    }

    override fun onResponse(p0: String?) {
        val message = dtoMapper.convertValue(JSONObject(p0), V8Response::class.java)
        if (message.isResponse) {
            // This is a command response
            val pendingMessage = pendingMessageQueue.firstOrNull { msg -> msg.pending && msg.messageId == message.id }
            if (pendingMessage != null) {
                pendingMessage.response = message.result?.optString("result")
            }
        } else {
            val responseParams = message.params

            when (val responseMethod = message.method) {
                Protocol.Debugger.ScriptParsed -> handleScriptParsedEvent(responseParams)
                Protocol.Debugger.BreakpointResolved -> handleBreakpointResolvedEvent(responseParams, responseMethod)
                Protocol.Debugger.Paused -> handleDebuggerPausedEvent(responseParams, responseMethod)
                Protocol.Debugger.Resumed -> handleDebuggerResumedEvent()
            }
        }
    }

    private fun handleDebuggerResumedEvent() {
        if (debuggerState == DebuggerState.Paused) {
            debuggerState = DebuggerState.Connected
        }
    }

    private fun handleDebuggerPausedEvent(responseParams: JSONObject?, responseMethod: String?) {
        if (debuggerState == DebuggerState.Disconnected) {
            dispatchMessage(Protocol.Debugger.Resume)
        } else {
            if (responseParams != null) {
                debuggerState = DebuggerState.Paused
                val updatedScript = replaceScriptId(responseParams, v8ScriptMap)
                chromeMessageQueue[responseMethod] = updatedScript
            }
        }
    }

    private fun handleScriptParsedEvent(responseParams: JSONObject?) {
        val scriptParsedEvent = dtoMapper.convertValue(responseParams, ScriptParsedEventRequest::class.java)
        if (scriptParsedEvent.url.isNotEmpty()) {
            // Get the V8 Script ID to map to the Chrome ScriptId (stored in url)
            v8ScriptMap[scriptParsedEvent.scriptId] = scriptParsedEvent.url
        }
    }

    private fun handleBreakpointResolvedEvent(responseParams: JSONObject?, responseMethod: String?) {
        val breakpointResolvedEvent =
                dtoMapper.convertValue(responseParams, BreakpointResolvedEvent::class.java)
        val location = breakpointResolvedEvent.location
        val response = BreakpointResolvedEvent().also { resolvedEvent ->
            resolvedEvent.breakpointId = breakpointResolvedEvent.breakpointId
            resolvedEvent.location = LocationResponse().also { locationResponse ->
                locationResponse.scriptId = v8ScriptMap[location?.scriptId]
                locationResponse.lineNumber = location?.lineNumber
                locationResponse.columnNumber = location?.columnNumber
            }
        }
        chromeMessageQueue[responseMethod] =
                dtoMapper.convertValue(response, JSONObject::class.java)
    }

    fun sendMessage(message: String, params: JSONObject? = null, runOnlyWhenPaused: Boolean = false) {
        if (debuggerState == DebuggerState.Paused) {
            v8MessageQueue[message] = params
        } else if (!runOnlyWhenPaused) {
            dispatchMessage(message, params)
        }
    }

    fun setDebuggerConnected(isConnected: Boolean) {
        debuggerState = if (isConnected) DebuggerState.Connected else DebuggerState.Disconnected
    }

    private fun dispatchMessage(method: String, params: JSONObject? = null) {
        val messageId: Int
        val pendingMessage = pendingMessageQueue.firstOrNull { msg -> msg.method == method && !msg.pending }
        if (pendingMessage != null) {
            pendingMessage.pending = true
            messageId = pendingMessage.messageId
        } else {
            messageId = nextDispatchId.incrementAndGet()
        }
        val message = JSONObject()
                .put("id", messageId)
                .put("method", method)
                .put("params", params)

        actions = message.toString()
        v8Inspector?.dispatchProtocolMessage(actions)
    }

    private data class PendingResponse(val method: String, var messageId: Int) {
        var response: String? = null
        var pending = false
    }

    internal enum class DebuggerState {
        Disconnected,
        Paused,
        Connected
    }

    companion object {
        const val TAG = "V8Messenger"
    }
}
