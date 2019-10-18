package com.imatrixteam.jsflutter;

import android.content.Context;

import com.eclipsesource.v8.V8Object;

import org.json.JSONObject;

import java.util.HashMap;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class MXJSFlutterApp {

    static MXJSFlutterEngine jsFlutterEngineStatic;

    private Context mContext;

    private String appName;
    private MXJSFlutterEngine jsFlutterEngine;

    private V8Object jsAppObj;
    private MXJSEngine jsEngine;
    private MXJSExecutor jsExecutor;

    private MXJSFlutterApp currentApp;

    //Flutter通道
    private static final String FLUTTER_METHED_CHANNEL_NAME = "js_flutter.js_flutter_app_channel";
    MethodChannel jsFlutterAppChannel;

    public MXJSFlutterApp initWithAppName(Context context, String appName, MXJSFlutterEngine jsFlutterEngine) {
        this.mContext = context;
        this.appName = appName;
        this.jsFlutterEngine = jsFlutterEngine;
        jsFlutterEngineStatic = jsFlutterEngine;

        setupJSEngine();
        setUpChannel(((MXFlutterActivity)context).getFlutterView());

        currentApp = this;
        return this;
    }

    private void setupJSEngine() {

        jsEngine = MXJSEngine.getInstance(mContext);
        jsExecutor = jsEngine.jsExecutor;
        //todo 调试时，指向本地路径，可以热重载
        String jsBasePath = "";

        //JSFlutter JS运行库搜索路径
        String jsFlutterFrameworkDir = "js_framework_lib";
        jsEngine.addSearchDir(jsFlutterFrameworkDir);

        //app业务代码搜索路径
        String jsAppCoreDir = "app_test";
        jsEngine.addSearchDir(jsAppCoreDir);

        String jsBasicLibPath = jsFlutterFrameworkDir + "/" +  "js_basic_lib.js";
        jsExecutor.executeScriptPath(jsBasicLibPath, new MXJSExecutor.ExecuteScriptCallback() {
            @Override
            public void onComplete(Object value) {

            }
        });

    }

    //flutter --> js
    void setUpChannel(BinaryMessenger flutterViewController) {
        jsFlutterAppChannel = new MethodChannel(flutterViewController,FLUTTER_METHED_CHANNEL_NAME);
        jsFlutterAppChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if(currentApp == null)
                    return;

                if(methodCall.method.equals("callJS")){
                    currentApp.jsExecutor.execute(new Runnable() {
                        @Override
                        public void run() {
                            if (jsAppObj == null) return;
                            currentApp.jsExecutor.invokeJSValue(jsAppObj, "nativeCall", methodCall.arguments, new MXJSExecutor.InvokeJSValueCallback() {
                                @Override
                                public void onSuccess(Object value) {

                                }

                                @Override
                                public void onFail(Error error) {

                                }
                            });
                        }
                    });
                }
            }
        });
    }


    public void unsetup() {

    }

    public void runApp() {
        runAppWithPageName("");
    }

    public void runAppWithPageName(String pageName) {

        jsExecutor.execute(new Runnable() {
            @Override
            public void run() {
                MXNativeJSFlutterApp MXNativeJSFlutterApp = new MXNativeJSFlutterApp();
                V8Object v8Object = new V8Object(jsExecutor.runtime);
                jsExecutor.runtime.add("MXNativeJSFlutterApp",v8Object);
                v8Object.registerJavaMethod(MXNativeJSFlutterApp, "setCurrentJSApp",
                        "setCurrentJSApp", new Class<?>[]{V8Object.class});
                v8Object.registerJavaMethod(MXNativeJSFlutterApp,
                        "callFlutterReloadApp", "callFlutterReloadApp", new Class<?>[]{V8Object.class, String.class});
                v8Object.registerJavaMethod(MXNativeJSFlutterApp,
                        "callFlutterWidgetChannel", "callFlutterWidgetChannel", new Class<?>[]{String.class,V8Object.class,});
            }
        });

        jsExecutor.executeScriptPath("app_test/main.js", new MXJSExecutor.ExecuteScriptCallback() {
            @Override
            public void onComplete(Object value) {

            }
        });
    }

    public void exitApp() {
//        this.jsAppObj.release();
//        this.jsExecutor.invalidate();
    }


    //js 注入对象
    class MXNativeJSFlutterApp {

        //js --> native
        public void setCurrentJSApp(V8Object jsApp) {
            jsAppObj = (V8Object) jsExecutor.runtime.get("currentJSApp");
        }

        //js --> flutter
        public void callFlutterReloadApp(V8Object jsApp, String widgetData) {
            jsAppObj = (V8Object) jsExecutor.runtime.get("currentJSApp");
            jsFlutterEngine.callFlutterReloadAppWithJSWidgetData(widgetData);
        }

        //js --> flutter
        public void callFlutterWidgetChannel(String methodName, V8Object args) {
            String[] datas = args.getKeys();
            HashMap dataMap =  new HashMap();
            for (int i = 0; i < datas.length; i++) {
                dataMap.put(datas[i],args.get(datas[i]));
            }
            ((MXFlutterActivity)mContext).runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    jsFlutterAppChannel.invokeMethod(methodName, dataMap);
                }
            });
        }
    }
}
