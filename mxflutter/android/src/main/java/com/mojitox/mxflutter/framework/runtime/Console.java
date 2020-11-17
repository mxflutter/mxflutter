package com.mojitox.mxflutter.framework.runtime;

import android.util.Log;

public class Console {
    public void log(final String message) {
        Log.i("Console [INFO] ", message);
    }
    public void error(final String message) {
        Log.e("Console [ERROR] ", message);
    }
}