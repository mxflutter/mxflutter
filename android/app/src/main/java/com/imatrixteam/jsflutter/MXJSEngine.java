package com.imatrixteam.jsflutter;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;


import com.eclipsesource.v8.JavaCallback;
import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Object;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class MXJSEngine {
    static private String TAG = "MXJSEngine";

    public MXJSExecutor jsExecutor;

    private ArrayList<String> searchDirArray;

    private Set<String> runnedScriptFile;

    private Context mContext;

    private Map<String, String[]> dirMap = new HashMap<>();

    public MXJSEngine(Context context) {
        mContext = context;
        this.searchDirArray = new ArrayList<>();
        this.runnedScriptFile = new HashSet<>();
        setup();
    }


    private void setup() {
        this.jsExecutor = MXJSExecutor.getInstance(mContext);
        setupBasicJSRuntime();
    }

    private void setupBasicJSRuntime() {

        JavaVoidCallback nativePrint = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                if (args.length() > 0) {
                    Log.i(TAG, args.get(0).toString());
                }
            }
        };
        jsExecutor.registerJavaMethod(nativePrint, "nativePrint");

        JavaVoidCallback dartPrint = new JavaVoidCallback() {
            @Override
            public void invoke(V8Object v8Object, V8Array args) {
                if (args.length() > 0) {
                    Log.i(TAG, args.get(0).toString());
                }
            }
        };
        jsExecutor.registerJavaMethod(dartPrint, "dartPrint");

        JavaCallback require = new JavaCallback() {
            @Override
            public Object invoke(V8Object v8Object, V8Array args) {
                if (args.length() > 0) {
                    String filePath = args.get(0).toString();

                    String prefix = "./";
                    if(filePath.startsWith(prefix)){
                        filePath = filePath.substring(prefix.length());
                    }

                    String absolutePath = "";

                    ArrayList<String> extensions = new ArrayList<>();
                    extensions.add(".js");
                    extensions.add(".ddc.js");

                    for (String dir : searchDirArray
                    ) {
                        try {
                            if (!dirMap.containsKey(dir)) {
                                String[] files = mContext.getAssets().list(dir);
                                dirMap.put(dir, files);
                            }

                            for (String fileName : dirMap.get(dir)
                            ) {
                                for (String ext : extensions) {
                                    String absolutePathTemp = dir + "/" + filePath;
                                    if (!filePath.endsWith(".js")) {
                                        absolutePathTemp += ext;
                                        filePath += ext;
                                    }
                                    if (fileName.equals(filePath)) {
                                        absolutePath = absolutePathTemp;
                                        break;
                                    }
                                }
                            }

                        } catch (Exception e) {
                            Log.e(TAG, "", e);
                        }
                    }
                    JSModule module = null;
                    if (!TextUtils.isEmpty(absolutePath)) {
                        module = JSModule.require(filePath, absolutePath, jsExecutor.runtime);
                        if (module == null) {
                            jsExecutor.executeScript("throw 'not found'", new MXJSExecutor.ExecuteScriptCallback() {
                                @Override
                                public void onComplete(Object value) {

                                }
                            });
                            return null;
                        }
                    }
                    return module.mExports;
                }
                return null;
            }
        };
        jsExecutor.registerJavaMethod(require, "require");
    }

    void addSearchDir(String dir) {
        if (TextUtils.isEmpty(dir) || searchDirArray.indexOf(dir) != -1) {
            return;
        }
        searchDirArray.add(dir);
    }
}
