package com.mojitox.mxflutter.framework.ffi;

import android.util.Log;
import androidx.annotation.Keep;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8ScriptExecutionException;
import com.eclipsesource.v8.utils.V8ObjectUtils;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.MXJSExecutor;
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

    private boolean isSoLoadSuccess;

    public MxFlutterFfi() {
        isSoLoadSuccess = SafelyLibraryLoader
                .loadLibrary(MXFlutterPlugin.getInstance().mFlutterPluginBinding.getApplicationContext(), "mxflutter");
        init(this);
    }

    /**
     * 释放native全局变量
     */
    public void onMxFlutterAppClose(boolean release) {
        if (release) {
            release();
        }
    }

    @Keep
    public String syncPropsCallback(String args) {
        if (MXJSExecutor.runtime != null && !MXJSExecutor.runtime.isReleased()) {
            final Object[] result = new Object[1];
            CountDownLatch countDownLatch = new CountDownLatch(1);
            UiThreadUtil.post(() -> {
                Map<String, Object> jsArgument = new HashMap<>();
                jsArgument.put("method", "syncPropsCallback");
                jsArgument.put("arguments", args);
                result[0] = MXJSExecutor.runtime.executeFunction("nativeCall", new V8Array(MXJSExecutor.runtime).push(
                        V8ObjectUtils.toV8Object(MXJSExecutor.runtime, jsArgument)));
                countDownLatch.countDown();
                Log.d("mxflutternative", "call js syncPropsCallback result:" + result[0]);
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
            return result[0].toString();
        }
        Log.d("mxflutternative", "call java syncPropsCallback null:" + this);
        return "jsAppObj is null";
    }

    private native void init(MxFlutterFfi mxFlutterFfi);

    private native void release();
}
