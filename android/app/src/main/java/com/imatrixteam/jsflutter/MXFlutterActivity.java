//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.imatrixteam.jsflutter;

import android.os.Bundle;

import androidx.annotation.NonNull;
import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MXFlutterActivity extends FlutterActivity {

    private MXJSFlutterEngine mMXJSFlutterEngine;

    private MethodChannel listViewDemoChannel;

    private String jsAppName = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // 一.创建FlutterViewController
        super.onCreate(savedInstanceState);
        setup();
        GeneratedPluginRegistrant.registerWith(this);

        setupMessageChannel(this.getFlutterView());
    }

    //----------------MXFlutter的启动----------------------------
    public void setup() {
        // 二.MXJSFlutterEngine,初始化Flutter/Native/JS 三方的Bridge
        mMXJSFlutterEngine = new MXJSFlutterEngine(this, this.getFlutterView());

        // 三.设置初始化启动哪个页面
        String route = "FlutterHomePage";
        getFlutterView().setInitialRoute(route);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mMXJSFlutterEngine.destroy();
    }

    //当前MXFlutter App的MethodChannel
    private void setupMessageChannel(BinaryMessenger flutterEngine) {
        listViewDemoChannel = new MethodChannel(flutterEngine, "MXFlutter_MethodChannel_Demo");
        listViewDemoChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {
                if(call.method.equals("callNativeIconListRefresh")){
                    //todo network
                    result.success("{" +
                            "  \"title\": \"The Basics - Networking\"," +
                            "  \"description\": \"Your app fetched this from a remote endpoint!\"," +
                            "  \"movies\": [" +
                            "    { \"id\": \"1\", \"title\": \"Star Wars\", \"releaseYear\": \"1977\" }," +
                            "    { \"id\": \"2\", \"title\": \"Back to the Future\", \"releaseYear\": \"1985\" }," +
                            "    { \"id\": \"3\", \"title\": \"The Matrix\", \"releaseYear\": \"1999\" }," +
                            "    { \"id\": \"4\", \"title\": \"Inception\", \"releaseYear\": \"2010\" }," +
                            "    { \"id\": \"5\", \"title\": \"Interstellar\", \"releaseYear\": \"2014\" }" +
                            "  ]" +
                            "}");
                }else if(call.method.equals("callNativeIconListLoadMore")){
                    result.success("");
                }
            }
        });
    }

}
