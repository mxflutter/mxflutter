package com.mojitox.mxflutter.framework.runtime;

import android.util.Log;
import android.webkit.JavascriptInterface;

public class Console {
    @JavascriptInterface
    public void log(final String message) {
        Log.i("Console [INFO] ", message);
    }
    @JavascriptInterface
    public void error(final String message) {
        Log.e("Console [ERROR] ", message);
    }
    @JavascriptInterface
    public void warn(final String message) {
        Log.w("Console [WARN] ", message);
    }
}