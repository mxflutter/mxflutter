package com.mojitox.mxflutter_example;

import android.os.Bundle;

import org.json.JSONException;
import org.json.JSONObject;

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.JSONUtil;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {

    private MethodChannel listViewDemoChannel;

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setupMessageChannel(this.getFlutterEngine().getDartExecutor().getBinaryMessenger());
    }

    //当前MXFlutter App的MethodChannel
    private void setupMessageChannel(BinaryMessenger flutterEngine) {
        listViewDemoChannel = new MethodChannel(flutterEngine, "MXFlutter_MethodChannel_Demo");
        listViewDemoChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {
                if (call.method.equals("callNativeIconListRefresh")) {
                    //todo network

                    JSONObject resultJsObj = null;
                    try {
                        String resultStr = "{" +
                                "  \"title\": \"The Basics - Networking\"," +
                                "  \"description\": \"Your app fetched this from a remote endpoint!\"," +
                                "  \"movies\": [" +
                                "    { \"id\": \"1\", \"title\": \"Star Wars\", \"releaseYear\": \"1977\" }," +
                                "    { \"id\": \"2\", \"title\": \"Back to the Future\", \"releaseYear\": \"1985\" }," +
                                "    { \"id\": \"3\", \"title\": \"The Matrix\", \"releaseYear\": \"1999\" }," +
                                "    { \"id\": \"4\", \"title\": \"Inception\", \"releaseYear\": \"2010\" }," +
                                "    { \"id\": \"5\", \"title\": \"Interstellar\", \"releaseYear\": \"2014\" }" +
                                "  ]" +
                                "}";
                        resultJsObj = new JSONObject(resultStr);
                        result.success(JSONUtil.unwrap(resultJsObj));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                } else if (call.method.equals("callNativeIconListLoadMore")) {
                    result.success(null);
                }
            }
        });
    }
}
