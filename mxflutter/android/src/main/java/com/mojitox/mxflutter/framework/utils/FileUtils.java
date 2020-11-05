//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework.utils;

import android.content.Context;
import android.util.Log;

import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.constants.MxConfig;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class FileUtils {

    public static final String TAG = "FileUtils";

    public static String getScriptFromPath(String filePath) {
        if (filePath.startsWith(MxConfig.ANDROID_ASSETS)) {
            Context context = MXFlutterPlugin.get().mFlutterPluginBinding.getApplicationContext();
            String filename = filePath.replace(MxConfig.ANDROID_ASSETS, "");
            return getScriptFromAssets(context, filename);
        } else {
            return getScriptFromFS(filePath);
        }
    }

    public static String getScriptFromAssets(Context context, String fileName) {
        InputStream input = null;
        ByteArrayOutputStream output = null;
        try {
            input = context.getAssets().open(fileName);
            output = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int len = 0;
            while ((len = input.read(buffer)) != -1) {
                output.write(buffer, 0, len);
            }
            output.flush();
            return output.toString();
        } catch (IOException e) {
            Log.e(TAG, "", e);
        } finally {
            try {
                if (output != null) {
                    output.close();
                }
                if (input != null) {
                    input.close();
                }
            } catch (IOException e) {
                Log.e(TAG, "", e);
            }
        }
        return null;
    }

    public static String getScriptFromFS(String fileName) {
        InputStream input = null;
        ByteArrayOutputStream output = null;
        try {
            input = new FileInputStream(new File(fileName));
            output = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int len = 0;
            while ((len = input.read(buffer)) != -1) {
                output.write(buffer, 0, len);
            }
            output.flush();
            return output.toString();
        } catch (IOException e) {
            Log.e(TAG, "", e);
        } finally {
            try {
                if (output != null) {
                    output.close();
                }
                if (input != null) {
                    input.close();
                }
            } catch (IOException e) {
                Log.e(TAG, "", e);
            }
        }
        return null;
    }

    public static String findRequireJsPath(String filePath) {
        String prefix = "./";
        if (filePath.startsWith(prefix)) {
            filePath = filePath.substring(prefix.length());
        }
        if (!filePath.endsWith(MxConfig.MX_JS_EXT)) {
            filePath += MxConfig.MX_JS_EXT;
        }
        return MxConfig.getJsPath() + "/" + filePath;
    }
}
