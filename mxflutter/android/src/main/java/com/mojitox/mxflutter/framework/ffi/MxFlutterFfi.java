package com.mojitox.mxflutter.framework.ffi;

import android.util.Log;
import androidx.annotation.Keep;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8ScriptExecutionException;
import com.eclipsesource.v8.utils.V8ObjectUtils;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.system.SafelyLibraryLoader;
import com.mojitox.mxflutter.framework.utils.UiThreadUtil;
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
                .loadLibrary(MXFlutterPlugin.get().mFlutterPluginBinding.getApplicationContext(), "mxflutter");
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
        if (isSoLoadSuccess && MXFlutterPlugin.get().getCurrentApp().getJsAppObj() != null) {
            final Object[] result = new Object[1];
            CountDownLatch countDownLatch = new CountDownLatch(1);
            UiThreadUtil.post(() -> {
                Map<String, Object> jsArgument = new HashMap<>();
                jsArgument.put("method", "syncPropsCallback");
                jsArgument.put("arguments", args);
                Log.d(TAG, "call js syncPropsCallback result:" + args.toString());
                result[0] = MXFlutterPlugin.get().getCurrentApp().getJsAppObj()
                        .executeFunction("nativeCall", new V8Array(MXFlutterPlugin.get().getRuntime()).push(
                                V8ObjectUtils.toV8Object(MXFlutterPlugin.get().getRuntime(), jsArgument)));
                countDownLatch.countDown();
                Log.d(TAG, "call js syncPropsCallback result:" + result[0]);
            });
            try {
                countDownLatch.await(3, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                e.printStackTrace();
                return "countDownLatch exception";
            } catch (V8ScriptExecutionException e) {
                e.printStackTrace();
                return "V8ScriptExecutionException";
            }
            Log.d(TAG, "call js syncPropsCallback result1" + (result[0] == null));
            return result[0].toString();
        }
        Log.d(TAG, "call java syncPropsCallback null:" + this);
        return "jsAppObj is null";
    }

    private native void init(MxFlutterFfi mxFlutterFfi);

    private native void release();
}
