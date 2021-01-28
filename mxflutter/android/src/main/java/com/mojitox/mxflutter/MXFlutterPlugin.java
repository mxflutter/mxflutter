package com.mojitox.mxflutter;

import android.content.Context;
import androidx.annotation.NonNull;
import com.mojitox.mxflutter.framework.JsFlutterApp;
import com.mojitox.mxflutter.framework.JsFlutterEngine;
import com.mojitox.mxflutter.framework.ffi.MxFlutterFfi;
import com.mojitox.mxflutter.framework.js.BaseJsExecutor;
import com.mojitox.mxflutter.framework.js.JsEngineLoader;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/**
 * MXFlutterPlugin
 */
public class MXFlutterPlugin implements FlutterPlugin, MethodCallHandler {

    private static MXFlutterPlugin sMXFlutterPluginPlugin;
    private JsFlutterEngine mxEngine;
    private JsFlutterApp currentApp;
    private BinaryMessenger binaryMessenger;
    private Context applicationContext;
    private MxFlutterFfi mxFlutterFfi;

    /**
     * 获取MxFlutterPlugin静态变量
     * 预加载下可能为空，注意分离flutter和js引擎生命周期
     */
    public static MXFlutterPlugin get() {
        return sMXFlutterPluginPlugin;
    }

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        if (sMXFlutterPluginPlugin != null) {
            sMXFlutterPluginPlugin.dispose();
        }
        sMXFlutterPluginPlugin = this;
        applicationContext = flutterPluginBinding.getApplicationContext();
        binaryMessenger = flutterPluginBinding.getBinaryMessenger();
        JsEngineLoader.getInstance().initApplication(applicationContext);
        JsEngineLoader.getInstance().getJsEngine().onAttachedToFlutterEngine();
        currentApp = new JsFlutterApp();
        mxFlutterFfi = new MxFlutterFfi();
        mxEngine = new JsFlutterEngine();
    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
        if (call.method.equals("getPlatformVersion")) {
            result.success("Android " + android.os.Build.VERSION.RELEASE);
        } else {
            result.notImplemented();
        }
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        if (sMXFlutterPluginPlugin != null) {
            sMXFlutterPluginPlugin.dispose();
            sMXFlutterPluginPlugin = null;
        }
    }

    private void dispose() {
        if (getMxEngine() != null) {
            getMxEngine().destroy();
        }
        if (mxFlutterFfi != null) {
            mxFlutterFfi.onMxFlutterAppClose();
        }
    }

    public JsFlutterEngine getMxEngine() {
        return mxEngine;
    }

    public JsFlutterApp getCurrentApp() {
        return currentApp;
    }

    public BinaryMessenger getBinaryMessenger() {
        return binaryMessenger;
    }

    public BaseJsExecutor getJsExecutor() {
        return JsEngineLoader.getInstance().getJsEngine().getJsExecutor();
    }

    public Context getApplicationContext() {
        return applicationContext;
    }

    /**
     * dart ffi
     */
    public MxFlutterFfi getMxFlutterFfi() {
        return mxFlutterFfi;
    }
}
