package com.mojitox.mxflutter.framework.executor;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;

public class UiThread {

    private static final Handler sHandler = new Handler(Looper.getMainLooper());

    public static void postAtFrontOfQueue(@NonNull Runnable command) {
        sHandler.postAtFrontOfQueue(command);
    }

    public static void post(@NonNull Runnable command) {
        sHandler.post(command);
    }

    public static boolean isUIThread() {
        return Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId();
    }
}