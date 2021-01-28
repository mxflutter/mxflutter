package com.mojitox.mxflutter.framework.callback;

import androidx.annotation.Nullable;

public interface InvokeJSValueCallback {

    void onSuccess(@Nullable Object value);

    void onError(Error error);

}
