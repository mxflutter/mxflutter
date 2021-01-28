package com.mojitox.mxflutter.framework.ffi;

import androidx.annotation.Keep;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.constants.ApiName;
import com.mojitox.mxflutter.framework.constants.JsObjectType;
import com.mojitox.mxflutter.framework.constants.MethodChannelConstant;
import com.mojitox.mxflutter.framework.executor.UiThread;
import com.mojitox.mxflutter.framework.js.JsEngineLoader;
import com.mojitox.mxflutter.framework.utils.SafelyLibraryLoader;
import com.mojitox.mxflutter.framework.utils.MxLog;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/**
 * create by ericpsun on 2020/11/3.
 */
public class MxFlutterFfi {

    private static final String TAG = "MxFlutterFfi";
    private final boolean isSoLoadSuccess;

    public MxFlutterFfi() {
        isSoLoadSuccess = SafelyLibraryLoader
                .loadLibrary(JsEngineLoader.getInstance().getApplicationContext(), "mxflutter");
        MxLog.d(TAG, "isSoLoadSuccess:" + isSoLoadSuccess);
        if (isSoLoadSuccess) {
            init(this);
        }
    }

    /**
     * 释放native全局变量
     */
    public void onMxFlutterAppClose() {
        if (isSoLoadSuccess) {
            release();
        }
    }

    /**
     * native 调用
     */
    @Keep
    public String syncPropsCallback(String args) {
        if (isSoLoadSuccess && JsEngineLoader.getInstance().getJsEngine().getJsExecutor()
                .assertInitSuccess(JsObjectType.CURRENT_APP_OBJECT)) {
            final Object[] result = new Object[1];
            CountDownLatch countDownLatch = new CountDownLatch(1);
            UiThread.post(new Runnable() {
                @Override
                public void run() {
                    Map<String, Object> jsArgument = new HashMap<>();
                    jsArgument.put(ApiName.METHOD_KEY, "syncPropsCallback");
                    jsArgument.put(ApiName.METHOD_ARGUMENT, args);
                    MxLog.d(TAG, "call js syncPropsCallback argument:" + args);
                    result[0] = JsEngineLoader.getInstance().getJsEngine().getJsExecutor()
                            .invokeJSValueSync(JsObjectType.CURRENT_APP_OBJECT,
                                    MethodChannelConstant.NATIVE_CALL_METHOD, jsArgument);
                    countDownLatch.countDown();
                    MxLog.d(TAG, "call js syncPropsCallback result:" + result[0]);
                }
            });
            try {
                countDownLatch.await(3, TimeUnit.SECONDS);
            } catch (Exception e) {
                e.printStackTrace();
                return "syncPropsCallback exception";
            }
            return result[0].toString();
        }
        MxLog.d(TAG, "call java syncPropsCallback null:" + this);
        return "jsAppObj is null";
    }

    /**
     * call flutter from native use dart:ffi
     * @return flutter result, may be return empty string
     */
    public String callFlutterFunctionSync(String jsonString) {
        if (isSoLoadSuccess) {
            return nativeCallFlutterFunctionSync(jsonString);
        }
        return "";
    }

    private native String nativeCallFlutterFunctionSync(String jsonString);

    private native void init(MxFlutterFfi mxFlutterFfi);

    private native void release();
}
