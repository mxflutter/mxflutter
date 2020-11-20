package com.mojitox.mxflutter.framework.ffi;

import android.util.Log;
import androidx.annotation.Keep;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.constants.ApiName;
import com.mojitox.mxflutter.framework.constants.JsObjectType;
import com.mojitox.mxflutter.framework.executor.UiThread;
import com.mojitox.mxflutter.framework.system.SafelyLibraryLoader;
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
                .loadLibrary(MXFlutterPlugin.get().getApplicationContext(), "mxflutter");
        Log.d(TAG, "isSoLoadSuccess:" + isSoLoadSuccess);
        if (isSoLoadSuccess) {
            init(this);
        }
    }

    /**
     * 释放native全局变量
     */
    public void onMxFlutterAppClose(boolean release) {
        if (release && isSoLoadSuccess) {
            release();
        }
    }

    @Keep
    public String syncPropsCallback(String args) {
        if (isSoLoadSuccess && MXFlutterPlugin.get().getJsEngine().getJsExecutor()
                .assertInitSuccess(JsObjectType.CURRENT_APP_OBJECT)) {
            final Object[] result = new Object[1];
            CountDownLatch countDownLatch = new CountDownLatch(1);
            UiThread.post(() -> {
                Map<String, Object> jsArgument = new HashMap<>();
                jsArgument.put("method", "syncPropsCallback");
                jsArgument.put("arguments", args);
                Log.d(TAG, "call js syncPropsCallback argument:" + args);
                result[0] = MXFlutterPlugin.get().getJsEngine().getJsExecutor()
                        .invokeJSValueSync(JsObjectType.CURRENT_APP_OBJECT,
                                ApiName.NATIVE_CALL_METHOD, jsArgument);
                countDownLatch.countDown();
                Log.d(TAG, "call js syncPropsCallback result:" + result[0]);
            });
            try {
                countDownLatch.await(3, TimeUnit.SECONDS);
            } catch (Exception e) {
                e.printStackTrace();
                return "syncPropsCallback exception";
            }
            return result[0].toString();
        }
        Log.d(TAG, "call java syncPropsCallback null:" + this);
        return "jsAppObj is null";
    }

    private native void init(MxFlutterFfi mxFlutterFfi);

    private native void release();
}
