package com.mojitox.mxflutter.framework.js.x5;

import android.text.TextUtils;
import android.util.Log;
import android.webkit.JavascriptInterface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.executor.JsTask;
import com.mojitox.mxflutter.framework.executor.UiThread;
import com.mojitox.mxflutter.framework.utils.FileUtils;
import com.mojitox.mxflutter.framework.utils.JsUtil;
import com.mojitox.mxflutter.framework.utils.LogUtilsKt;
import com.tencent.smtt.sdk.JsValue;
import io.flutter.plugin.common.MethodChannel;
import java.util.Map;

public class X5Interface {

    private static final String TAG = "X5Interface";
    @NonNull
    private final X5Executor x5Executor;

    public X5Interface(@NonNull X5Executor x5Executor) {
        this.x5Executor = x5Executor;
    }

    @JavascriptInterface
    public void mxJSBridgeInvokeFlutterCommonChannel(String invokeData, JsValue callback) {
        Log.e(TAG, "FlutterCommonChannelInvoker:" + invokeData + "__callback:" + callback);
        MXFlutterPlugin.get().getMxEngine()
                .invokeFlutterCommonChannel(invokeData, reply -> {
                    Log.e(TAG, "FlutterCommonChannelInvoker_reply:" + reply);
                    x5Executor.invokeJsFunction(callback, reply, false);
                });

    }

    @JavascriptInterface
    public void dartPrint(String result) {
        Log.d(TAG, result);
    }

    @JavascriptInterface
    public void nativePrint(String result) {
        Log.d(TAG, result);
    }

    @JavascriptInterface
    public void setTimeout(JsValue function, long timeout) {
        Log.d(TAG, "setTimeout:" + timeout);
        if (function != null && function.isFunction() && timeout >= 0) {
            x5Executor.executeDelay(new JsTask() {
                @Override
                protected void execute() {
                    x5Executor.invokeJsFunction(function, null);
                }
            }, timeout);
        }
    }

    @JavascriptInterface
    public boolean isMXIOS() {
        return false;
    }

    @JavascriptInterface
    public boolean isMXAndroid() {
        return true;
    }

    @JavascriptInterface
    public void mxJSBridgeMethodChannelInvokeMethod(String channelName, String methodName, String argument,
            JsValue callback) {
        Log.d(TAG, "mxJSBridgeMethodChannelInvokeMethod:" + channelName + "__method:" + methodName + "argument:"
                + argument);
        MXFlutterPlugin.get().getMxEngine()
                .callFlutterMethodChannelInvoke(channelName, methodName, JsUtil.getMap(argument),
                        new MethodChannel.Result() {
                            @Override
                            public void success(@Nullable Object result) {
                                if (result == null) {
                                    x5Executor.invokeJsFunction(callback, null, false);
                                } else if (result instanceof Map) {
                                    x5Executor.invokeJsFunction(callback, (Map) result);
                                } else {
                                    throw new IllegalArgumentException(
                                            "MethodChannel.Result Must be return Map object");
                                }
                            }

                            @Override
                            public void error(String errorCode, @Nullable String errorMessage,
                                    @Nullable Object errorDetails) {
                            }

                            @Override
                            public void notImplemented() {
                            }
                        });
    }

    @JavascriptInterface
    public void mxJSBridgeMethodChannelSetMethodCallHandler(String channelName, JsValue function) {
        if (!TextUtils.isEmpty(channelName) && function != null && function.isFunction()) {
            MXFlutterPlugin.get().getJsEngine().storeJsCallback(channelName, function);
        }
    }

    @JavascriptInterface
    public void mxJSBridgeEventChannelReceiveBroadcastStreamListen(String channelName,
            String streamParam, JsValue onData, JsValue onError, JsValue onDone, boolean cancelOnError) {
        if (TextUtils.isEmpty(channelName)) {
            return;
        }
        String onDataId = MXFlutterPlugin.get().getJsEngine().storeJsCallback(onData);
        String onErrorId = MXFlutterPlugin.get().getJsEngine().storeJsCallback(onError);
        String onDoneId = MXFlutterPlugin.get().getJsEngine().storeJsCallback(onDone);
        MXFlutterPlugin.get().getMxEngine()
                .callFlutterEventChannelReceiveBroadcastStreamListenInvoke(channelName,
                        streamParam, onDataId, onErrorId, onDoneId, cancelOnError);
    }

    @JavascriptInterface
    public void require(String filePath) {
        Log.d(TAG,"require");
        String absolutePath = FileUtils.findRequireJsPath(filePath);
        if (!TextUtils.isEmpty(absolutePath)) {
            X5JsModule.require(filePath, absolutePath, x5Executor.getRuntime());
        } else {
            LogUtilsKt.MXFLogError(
                    "MXJSFlutter : require js file fail, import js file name: %s",
                    filePath);
        }
    }

    /**
     * js --> native
     * @param jsApp js传递的实例
     */
    @JavascriptInterface
    public void setCurrentJSApp(JsValue jsApp) {
        Log.d(TAG, "setCurrentJSApp");
        if (jsApp != null && jsApp.isObject()) {
            IMxJsFlutterApp jsFlutterApp = jsApp.toObject(IMxJsFlutterApp.class);
            x5Executor.setCurrentAppObject(jsFlutterApp);
        }
    }

    /**
     * js --> flutter
     * reload
     * @param jsApp js传递的实例
     * @param widgetData widget数据
     */
    @JavascriptInterface
    public void callFlutterReloadApp(JsValue jsApp, String widgetData) {
        Log.d(TAG, "callFlutterReloadApp");
        if (jsApp != null && jsApp.isObject()) {
            IMxJsFlutterApp jsFlutterApp = jsApp.toObject(IMxJsFlutterApp.class);
            x5Executor.setCurrentAppObject(jsFlutterApp);
            MXFlutterPlugin.get().getMainHandler().post(
                    () -> MXFlutterPlugin.get().getMxEngine().callFlutterReloadAppWithJSWidgetData(widgetData));
        }
    }

    /**
     * js --> flutter
     * @param methodName 方法名
     * @param args 数据
     */
    @JavascriptInterface
    public void callFlutterWidgetChannel(String methodName, String args) {
        Log.d(TAG, "callFlutterWidgetChannel");
        UiThread.post(() -> {
            if (methodName.equals("rebuild")) {
                MXFlutterPlugin.get().getCurrentApp().getJsFlutterAppRebuildChannel().send(args);
            } else if (methodName.equals("navigatorPush")) {
                MXFlutterPlugin.get().getCurrentApp().getJsFlutterAppNavigatorPushChannel().send(args);
            } else {
                MXFlutterPlugin.get().getCurrentApp().getJsFlutterAppChannel().invokeMethod(methodName, args);
            }
        });
    }
}
