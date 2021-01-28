package com.debug

import android.content.Context
import com.eclipsesource.v8.V8
import com.mojitox.mxflutter.BuildConfig
import com.mojitox.mxflutter.framework.constants.JsConstant
import org.json.JSONObject

object MXDebug {
    private var debugHasInit = false
    private const val MAX_SCRIPT_CACHE_SIZE_STR = "maxScriptsCacheSize"
    private const val MAX_DEPTH_STR = "maxDepth"
    private const val MAX_SCRIPT_CACHE_SIZE = 10000000
    private const val MAX_DEPTH = 32
    private var scriptsMap: MutableMap<String, String> = HashMap()

    fun startDebugV8(context: Context, runtime: V8) {
        if (!enableDebug()) {
            return
        }
        if (debugHasInit) {
            return
        }
        try {
            initStetho(context)
            initV8(runtime)
            debugHasInit = true
        } catch (e: Throwable) {
            // ignore
        }
    }

    private fun enableDebug(): Boolean {
        return !BuildConfig.IS_RELEASE and  BuildConfig.USE_V8
    }

    fun addScrips(scriptName: String, scripts: String) {
        if (!enableDebug() || !debugHasInit) {
            return
        }
        val exportScript = String.format(JsConstant.REQUIRE, scripts)
        scriptsMap[scriptName] = exportScript
        StethoHelper.notifyScriptsChanged(scriptName)
    }

    fun getScripts(name: String): String {
        return scriptsMap[name] ?: ""
    }

    fun getScriptsName(): Collection<String> {
        return scriptsMap.keys
    }

    private fun initV8(runtime: V8) {
        val messenger = V8Messenger(runtime)
        messenger.sendMessage(Protocol.Runtime.Enable, null, false)
        messenger.sendMessage(Protocol.Debugger.Enable, JSONObject().put(MAX_SCRIPT_CACHE_SIZE_STR, MAX_SCRIPT_CACHE_SIZE), false)
        messenger.sendMessage(Protocol.Debugger.SetAsyncCallStackDepth, JSONObject().put(MAX_DEPTH_STR, MAX_DEPTH), false)
        messenger.sendMessage(Protocol.Runtime.RunIfWaitingForDebugger, null, false)
        StethoHelper.initializeWithV8Messenger(messenger)
    }

    private fun initStetho(context: Context) {
        StethoHelper.initializeDebugger(context, ScriptProviderImp())
    }
}
