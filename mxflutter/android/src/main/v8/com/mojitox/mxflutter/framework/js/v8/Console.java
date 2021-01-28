package com.mojitox.mxflutter.framework.js.v8;

import android.webkit.JavascriptInterface;
import com.mojitox.mxflutter.framework.utils.MxLog;

public class Console {

    @JavascriptInterface
    public void log(final String message) {
        MxLog.i("Console [INFO] ", message);
    }

    @JavascriptInterface
    public void error(final String message) {
        MxLog.e("Console [ERROR] ", message);
    }

    @JavascriptInterface
    public void warn(final String message) {
        MxLog.w("Console [WARN] ", message);
    }
}