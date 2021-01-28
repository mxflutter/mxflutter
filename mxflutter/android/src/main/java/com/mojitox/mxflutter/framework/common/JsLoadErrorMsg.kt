package com.mojitox.mxflutter.framework.common

import com.mojitox.mxflutter.MXFlutterPlugin
import com.mojitox.mxflutter.framework.constants.JsConstant
import com.mojitox.mxflutter.framework.constants.MethodChannelConstant
import com.mojitox.mxflutter.framework.executor.UiThread
import com.mojitox.mxflutter.framework.js.JsEngineProvider
import com.mojitox.mxflutter.framework.utils.MxLog

/**
 * create by ericpsun on 2020/11/4.
 * main js以及业务js加载失败回调
 * Map 类型，包含两个字段
 * errorMsg: 错误信息，string类型。
 * jsFileType: 加载的js文件类型，int类型。0: main.js; 1: bundle-xxx.js
 */
object JsLoadErrorMsg {

    private const val JS_FILE_TYPE_KEY = "jsFileType"
    private const val ERROR_MSG_KEY = "errorMsg"
    private const val MAIN_JS_TYPE = 0
    private const val BUNDLE_JS_TYPE = 1

    fun invokeJsErrorMethodChannel(error: Error, filePath: String) {
        MXFlutterPlugin.get().mxEngine?.run {
            if (UiThread.isUIThread()) {
                MXFlutterPlugin.get().mxEngine.jsFlutterMainChannel
                        .invokeMethod(MethodChannelConstant.MX_FLUTTER_JS_EXCEPTION_HANDLER, getJsLoadErrorMsg(error, filePath))
            } else {
                UiThread.post {
                    MXFlutterPlugin.get().mxEngine.jsFlutterMainChannel
                            .invokeMethod(MethodChannelConstant.MX_FLUTTER_JS_EXCEPTION_HANDLER, getJsLoadErrorMsg(error, filePath))
                }
            }
        }
    }

    private fun getJsLoadErrorMsg(error: Error, filePath: String): HashMap<String, Any> {
        val errorMap = HashMap<String, Any>()
        var exceptionStack: String? = ""
        error.cause?.run {
            exceptionStack = JsEngineProvider.getErrorStack(this)
        }
        val exceptionMsg = error.cause?.message ?: ""
        val errorMsg = "fileName:$filePath\nselfMessage:${error.message}\nexceptionMessage:$exceptionMsg\nexceptionStack:$exceptionStack"
        MxLog.d("JsLoadErrorMsg", errorMsg)
        errorMap[ERROR_MSG_KEY] = errorMsg
        when {
            filePath.contains(JsConstant.MAIN_JS) -> {
                errorMap[JS_FILE_TYPE_KEY] = MAIN_JS_TYPE
            }
            filePath.contains(JsConstant.BUNDLE_JS) -> {
                errorMap[JS_FILE_TYPE_KEY] = BUNDLE_JS_TYPE
            }
            else -> {
                errorMap[JS_FILE_TYPE_KEY] = -1
            }
        }
        return errorMap
    }
}
