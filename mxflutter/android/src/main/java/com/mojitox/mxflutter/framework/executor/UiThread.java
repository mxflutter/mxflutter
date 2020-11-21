package com.mojitox.mxflutter.framework.executor;

import android.os.Looper;
import androidx.annotation.NonNull;

import com.mojitox.mxflutter.MXFlutterPlugin;

public class UiThread {

    public static void postAtFrontOfQueue(@NonNull Runnable command) {
        MXFlutterPlugin.get().getMainHandler().postAtFrontOfQueue(command);
    }

    public static void post(@NonNull Runnable command) {
        MXFlutterPlugin.get().getMainHandler().post(command);
    }

    public static boolean isUIThread() {
        return Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId();
    }
}