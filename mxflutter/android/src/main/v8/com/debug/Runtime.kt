package com.debug

import com.facebook.stetho.inspector.console.RuntimeReplFactory
import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer
import com.facebook.stetho.inspector.jsonrpc.JsonRpcResult
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsDomain
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsMethod
import org.json.JSONArray
import org.json.JSONObject
import com.facebook.stetho.inspector.protocol.module.Runtime as FacebookRuntimeBase

/**
 * Runtime Domain. Name of the class and methods must match names defined in Chrome Dev Tools protocol.
 */
@Suppress("UNUSED_PARAMETER", "unused")
class Runtime(replFactory: RuntimeReplFactory?) : ChromeDevtoolsDomain {
    private var v8Messenger: V8Messenger? = null
    private val adaptee = FacebookRuntimeBase(replFactory)

    fun initialize(v8Messenger: V8Messenger) {
        this.v8Messenger = v8Messenger
    }

    @ChromeDevtoolsMethod
    fun getProperties(peer: JsonRpcPeer?, params: JSONObject?): JsonRpcResult {
        val method = Protocol.Runtime.GetProperties
        val result = v8Messenger?.getV8Result(method, params)
        val jsonResult = GetPropertiesResult().put("result", JSONArray(result))
        return jsonResult as JsonRpcResult
    }

    /**
     * Pass through the needed [FacebookRuntimeBase] methods
     */
    @ChromeDevtoolsMethod
    fun releaseObject(peer: JsonRpcPeer?, params: JSONObject?) = adaptee.releaseObject(peer, params)

    @ChromeDevtoolsMethod
    fun releaseObjectGroup(peer: JsonRpcPeer?, params: JSONObject?) = adaptee.releaseObjectGroup(peer, params)

    @ChromeDevtoolsMethod
    fun callFunctionOn(peer: JsonRpcPeer?, params: JSONObject?): JsonRpcResult? = adaptee.callFunctionOn(peer, params)

    @ChromeDevtoolsMethod
    fun evaluate(peer: JsonRpcPeer?, params: JSONObject?): JsonRpcResult = adaptee.evaluate(peer, params)
}
