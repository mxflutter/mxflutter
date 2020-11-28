package com.mojitox.mxflutter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.JavascriptInterface;
import androidx.annotation.NonNull;
import com.mojitox.mxflutter.framework.JsFlutterApp;
import com.mojitox.mxflutter.framework.JsFlutterEngine;
import com.mojitox.mxflutter.framework.js.BaseJsEngine;
import com.mojitox.mxflutter.framework.js.BaseJsExecutor;
import com.mojitox.mxflutter.framework.js.JsEngineProvider;
import com.mojitox.mxflutter.framework.constants.MxConfig;
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
    private Handler mainHandler;
    private JsFlutterEngine mxEngine;
    private JsFlutterApp currentApp;
    private BaseJsEngine jsEngine;
    private BinaryMessenger flutterEngine;
    private Context applicationContext;


    @JavascriptInterface
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
        setJsLibPath(flutterPluginBinding);
        setFlutterEngine(flutterPluginBinding.getBinaryMessenger());
        setJsEngine(JsEngineProvider.createJsEngine());//切换引擎
        setCurrentApp(new JsFlutterApp());
        setMxEngine(new JsFlutterEngine());
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

    public Handler getMainHandler() {
        if (mainHandler == null) {
            return (mainHandler = new Handler(Looper.getMainLooper()));
        } else {
            return mainHandler;
        }
    }

    private void dispose() {
        if (getMxEngine() != null) {
            getMxEngine().destroy();
        }
    }

    public JsFlutterEngine getMxEngine() {
        return mxEngine;
    }

    public void setMxEngine(JsFlutterEngine mxEngine) {
        this.mxEngine = mxEngine;
    }

    public JsFlutterApp getCurrentApp() {
        return currentApp;
    }

    public void setCurrentApp(JsFlutterApp currentApp) {
        this.currentApp = currentApp;
    }

    public BaseJsEngine getJsEngine() {
        return jsEngine;
    }

    public void setJsEngine(BaseJsEngine jsEngine) {
        this.jsEngine = jsEngine;
    }

    public BinaryMessenger getFlutterEngine() {
        return flutterEngine;
    }

    public void setFlutterEngine(BinaryMessenger flutterEngine) {
        this.flutterEngine = flutterEngine;
    }

    public BaseJsExecutor getJsExecutor() {
        return jsEngine.getJsExecutor();
    }

    public Context getApplicationContext() {
        return applicationContext;
    }

    /**
     * 设置随包的Main.js路径
     */
    private static void setJsLibPath(@NonNull FlutterPluginBinding flutterPluginBinding) {
       String libPath =  flutterPluginBinding.getFlutterAssets().getAssetFilePathByName(MxConfig.JS_LIB_ASSERTS, "mxflutter");
       MxConfig.setJsLibPath(libPath);
    }
}
