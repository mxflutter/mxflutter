package com.mojitox.mxflutter.framework.utils;

import android.util.Log;
import com.mojitox.mxflutter.BuildConfig;

/**
 * create by ericpsun on 2020/12/4.
 */
public class MxLog {

    private static final boolean LOG_SWITCH = BuildConfig.DEBUG;
    private static final String TAG = "MXFlutter";

    public static void d(String tag, String message) {
        d(tag, message, null);
    }

    public static void d(String tag, String message, Throwable throwable) {
        if (LOG_SWITCH) {
            Log.d(TAG, "tag:" + tag + "=======message:" + message, throwable);
        }
    }

    public static void i(String tag, String message) {
        i(tag, message, null);
    }

    public static void i(String tag, String message, Throwable throwable) {
        if (LOG_SWITCH) {
            Log.i(TAG, "tag:" + tag + "=======message:" + message, throwable);
        }
    }

    public static void w(String tag, String message) {
        w(tag, message, null);
    }

    public static void w(String tag, String message, Throwable throwable) {
        if (LOG_SWITCH) {
            Log.w(TAG, "tag:" + tag + "=======message:" + message, throwable);
        }
    }

    public static void e(String tag, String message) {
        e(tag, message, null);
    }

    public static void e(String tag, String message, Throwable throwable) {
        if (LOG_SWITCH) {
            Log.e(TAG, "tag:" + tag + "=======message:" + message, throwable);
        }
    }
}
