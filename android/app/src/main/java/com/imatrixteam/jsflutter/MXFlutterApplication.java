//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.imatrixteam.jsflutter;

import com.imatrixteam.jsflutter.utils.FileUtils;

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
        MXJSFlutterApp.JSFLUTTER_LOCAL_DIR = this.getFilesDir().getAbsolutePath();

        initJsFS();
    }

    //js文件转移到fs中
    private void initJsFS() {
        if (!FileUtils.isCopiedFileFromAssets(sApplication)) {
            new Thread() {
                @Override
                public void run() {
                    super.run();
                    FileUtils.copyFilesFromAssetsAsync(sApplication, "", MXJSFlutterApp.JSFLUTTER_LOCAL_DIR, new String[]{
                            MXJSFlutterApp.JSFLUTTER_FRAMEWORK_DIR,
                            MXJSFlutterApp.JSFLUTTER_SRC_DIR1,
                    });
                }
            }.start();
        }
    }

    public static MXFlutterApplication getApplication() {
        return sApplication;
    }
}
