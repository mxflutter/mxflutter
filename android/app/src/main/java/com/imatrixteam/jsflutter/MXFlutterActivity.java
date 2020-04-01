//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.imatrixteam.jsflutter;

import android.os.Bundle;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MXFlutterActivity extends FlutterActivity {

    MXJSFlutterEngine mMXJSFlutterEngine;

    private String jsAppName = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // 一.创建FlutterViewController
        super.onCreate(savedInstanceState);
        setup();
        GeneratedPluginRegistrant.registerWith(this);
    }

    //----------------MXFlutter的启动----------------------------
    public void setup() {
        // 二.MXJSFlutterEngine,初始化Flutter/Native/JS 三方的Bridge
        mMXJSFlutterEngine = new MXJSFlutterEngine(this, this.getFlutterView());

        // 三.设置初始化启动哪个页面
        String route  = "FlutterHomePage";
        getFlutterView().setInitialRoute(route);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mMXJSFlutterEngine.destroy();
    }

}
