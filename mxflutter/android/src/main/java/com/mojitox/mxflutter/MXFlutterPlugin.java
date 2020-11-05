package com.mojitox.mxflutter;

import android.os.Handler;
import android.os.Looper;

import androidx.annotation.NonNull;

import com.eclipsesource.v8.V8;
import com.mojitox.mxflutter.framework.JsEngine;
import com.mojitox.mxflutter.framework.JsExecutor;
import com.mojitox.mxflutter.framework.JsFlutterApp;
import com.mojitox.mxflutter.framework.JsFlutterEngine;

import java.io.File;

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
    public FlutterPluginBinding mFlutterPluginBinding;
    private Handler mainHandler;
    private JsFlutterEngine mxEngine;
    private JsFlutterApp currentApp;
    private JsEngine jsEngine;
    private BinaryMessenger flutterEngine;
    private JsExecutor jsExecutor;
    private V8 runtime;
    private String soPath;
    private static Object lock = new Object();


    public static MXFlutterPlugin get() {
        return sMXFlutterPluginPlugin;
    }

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        if (sMXFlutterPluginPlugin != null) {
            sMXFlutterPluginPlugin.dispose();
        }
        sMXFlutterPluginPlugin = this;
        //Todo So可以用宿主的，外部传递进来
        //soPath = flutterPluginBinding.getApplicationContext().getFilesDir().getAbsolutePath() + File.separator + "j2v8.so";
        sMXFlutterPluginPlugin.mFlutterPluginBinding = flutterPluginBinding;
        setFlutterEngine(flutterPluginBinding.getBinaryMessenger());
        setJsExecutor(new JsExecutor());
        setJsEngine(new JsEngine());
        setCurrentApp(new JsFlutterApp());
        setMxEngine(new JsFlutterEngine());
    }

    private String getSoPath() {
        return soPath;
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

    public JsEngine getJsEngine() {
        return jsEngine;
    }

    public void setJsEngine(JsEngine jsEngine) {
        this.jsEngine = jsEngine;
    }

    public BinaryMessenger getFlutterEngine() {
        return flutterEngine;
    }

    public void setFlutterEngine(BinaryMessenger flutterEngine) {
        this.flutterEngine = flutterEngine;
    }

    public JsExecutor getJsExecutor() {
        return jsExecutor;
    }

    public void setJsExecutor(JsExecutor jsExecutor) {
        this.jsExecutor = jsExecutor;
    }

    public V8 getRuntime() {
        if (runtime == null) {
            synchronized (lock) {
                if (runtime == null) {
                    if (getSoPath() != null) {
                        runtime = V8.createV8Runtime("MxV8", getSoPath());
                    } else {
                        runtime = V8.createV8Runtime("MxV8");
                    }
                }
            }
        }
        return runtime;
    }

    public void setRuntime(V8 v8Runtime) {
        runtime = v8Runtime;
    }
}
