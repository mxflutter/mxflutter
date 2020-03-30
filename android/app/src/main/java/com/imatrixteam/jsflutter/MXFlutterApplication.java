package com.imatrixteam.jsflutter;

import io.flutter.app.FlutterApplication;

/**
 * Created by wennliu on 2020-03-27
 */
public class MXFlutterApplication extends FlutterApplication {

    private static MXFlutterApplication sApplication = null;

    @Override
    public void onCreate() {
        super.onCreate();
        sApplication = this;
    }

    public static MXFlutterApplication getApplication(){
        return sApplication;
    }
}
