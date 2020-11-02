package com.mojitox.mxflutter.framework.utils;

import android.os.Handler;
import android.os.Looper;

/**
 * create by ericpsun on 2020/7/1.
 */
public class UiThreadUtil {

    private static Handler sHandler = new Handler(Looper.getMainLooper());

    private UiThreadUtil() {

    }

    public static void post(Runnable runnable) {
        if (runnable == null) {
            return;
        }

        if (isUIThread()) {
            runnable.run();
        } else {
            sHandler.post(runnable);
        }
    }

    public static void post(Runnable runnable, int delay) {
        if (runnable == null) {
            return;
        }

        sHandler.postDelayed(runnable, delay);
    }

    public static void forcePost(Runnable runnable) {
        post(runnable, 0);
    }

    public static void remove(Runnable runnable) {
        if (runnable == null) {
            return;
        }

        sHandler.removeCallbacks(runnable);
    }

    public static boolean isUIThread() {
        return Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId();
    }
}
