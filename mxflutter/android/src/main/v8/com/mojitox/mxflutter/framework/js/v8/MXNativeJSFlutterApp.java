package com.mojitox.mxflutter.framework.js.v8;

import androidx.annotation.Keep;
import com.eclipsesource.v8.V8Object;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.constants.MethodChannelConstant;
import com.mojitox.mxflutter.framework.executor.UiThread;
import com.mojitox.mxflutter.framework.js.JsEngineLoader;

/**
 * create by ericpsun on 2020/11/9.
 */
public class MXNativeJSFlutterApp {

    //js --> native
    @Keep
    public void setCurrentJSApp(V8Object jsApp) {
        JsEngineLoader.getInstance().getJsEngine().getJsExecutor().setCurrentAppObject(jsApp.twin());
    }

    //js --> flutter
    @Keep
    public void callFlutterReloadApp(V8Object jsApp, String widgetData) {

        MXFlutterPlugin.get().getJsExecutor().setCurrentAppObject(jsApp.twin());

        UiThread.post(new Runnable() {
            @Override
            public void run() {
                MXFlutterPlugin.get().getMxEngine().callFlutterReloadAppWithJSWidgetData(widgetData);
            }
        });
    }

    /**
     * js --> flutter
     * @param methodName flutter method channel name
     * @param args flutter method channel args
     */
    @Keep
    public void callFlutterWidgetChannel(String methodName, String args) {
        UiThread.post(new Runnable() {
            @Override
            public void run() {
                if (methodName.equals(MethodChannelConstant.REBUILD)) {
                    MXFlutterPlugin.get().getCurrentApp().getJsFlutterAppRebuildChannel().send(args);
                } else if (methodName.equals(MethodChannelConstant.NAVIGATOR_PUSH)) {
                    MXFlutterPlugin.get().getCurrentApp().getJsFlutterAppNavigatorPushChannel().send(args);
                } else {
                    MXFlutterPlugin.get().getCurrentApp().getJsFlutterAppChannel().invokeMethod(methodName, args);
                }
            }
        });
    }
}
