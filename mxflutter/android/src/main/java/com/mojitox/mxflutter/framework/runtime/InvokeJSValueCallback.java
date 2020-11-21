package com.mojitox.mxflutter.framework.runtime;

import androidx.annotation.Nullable;

public interface InvokeJSValueCallback {

    void onSuccess(@Nullable Object value);

    void onError(Error error);

}
