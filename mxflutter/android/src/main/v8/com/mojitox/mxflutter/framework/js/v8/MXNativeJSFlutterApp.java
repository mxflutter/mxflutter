package com.mojitox.mxflutter.framework.js.v8;

import androidx.annotation.Keep;
import com.eclipsesource.v8.V8Object;
import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.executor.UiThread;

/**
 * create by ericpsun on 2020/11/9.
 */
public class MXNativeJSFlutterApp {

    //js --> native
    @Keep
    public void setCurrentJSApp(V8Object jsApp) {
        MXFlutterPlugin.get().getJsExecutor().setCurrentAppObject(jsApp.twin());
    }

    //js --> flutter
    @Keep
    public void callFlutterReloadApp(V8Object jsApp, String widgetData) {

        MXFlutterPlugin.get().getJsExecutor().setCurrentAppObject(jsApp.twin());

        MXFlutterPlugin.get().getMainHandler().post(new Runnable() {
            @Override
            public void run() {
                MXFlutterPlugin.get().getMxEngine().callFlutterReloadAppWithJSWidgetData(widgetData);
            }
        });
    }

    //js --> flutter
    @Keep
    public void callFlutterWidgetChannel(String methodName, String args) {
//            String[] datas = args.getKeys();
//            HashMap dataMap =  new HashMap();
//            for (int i = 0; i < datas.length; i++) {
//                dataMap.put(datas[i],args.get(datas[i]));
//            }
        UiThread.post(new Runnable() {
            @Override
            public void run() {
                if (methodName.equals("rebuild")) {
                    MXFlutterPlugin.get().getCurrentApp().getJsFlutterAppRebuildChannel().send(args);
                } else if (methodName.equals("navigatorPush")) {
                    MXFlutterPlugin.get().getCurrentApp().getJsFlutterAppNavigatorPushChannel().send(args);
                } else {
                    MXFlutterPlugin.get().getCurrentApp().getJsFlutterAppChannel().invokeMethod(methodName, args);
                }
            }
        });
    }
}
