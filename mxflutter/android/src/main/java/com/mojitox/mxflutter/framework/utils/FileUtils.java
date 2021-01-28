//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework.utils;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mojitox.mxflutter.framework.constants.MxConfig;
import com.mojitox.mxflutter.framework.js.JsEngineLoader;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class FileUtils {

    public static final String TAG = "FileUtils";

    public static String getScriptFromPath(String filePath) {
        if (filePath.startsWith(MxConfig.ANDROID_ASSETS)) {
            Context context = JsEngineLoader.getInstance().getApplicationContext();
            String filename = filePath.replace(MxConfig.ANDROID_ASSETS, "");
            return getScriptFromAssets(context, filename);
        } else {
            return getScriptFromFS(filePath);
        }
    }

    /**
     * 获取asset目录下指定文件内容
     */
    public static String getScriptFromAssets(Context context, String fileName) {
        InputStream input = null;
        try {
            input = context.getAssets().open(fileName);
        } catch (IOException e) {
            MxLog.e(TAG, "", e);
        }
        return getOutputFromInput(input);
    }

    /**
     * 从存储读取文件内容
     */
    public static String getScriptFromFS(String fileName) {
        InputStream input = null;
        try {
            input = new FileInputStream(new File(fileName));
        } catch (FileNotFoundException e) {
            MxLog.e(TAG, "", e);
        }
        return getOutputFromInput(input);
    }

    @Nullable
    private static String getOutputFromInput(InputStream input) {
        if (input == null) {
            return null;
        }
        ByteArrayOutputStream output = null;
        try {
            output = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int len;
            while ((len = input.read(buffer)) != -1) {
                output.write(buffer, 0, len);
            }
            output.flush();
            return output.toString();
        } catch (IOException e) {
            MxLog.e(TAG, "", e);
        } finally {
            try {
                if (output != null) {
                    output.close();
                }
                if (input != null) {
                    input.close();
                }
            } catch (IOException e) {
                MxLog.e(TAG, "", e);
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
        return MxConfig.getBizJsPath() + "/" + filePath;
    }

    /**
     * 文件写入
     */
    public static boolean copy(InputStream srcStream, File destFile) {
        boolean result = true;
        if (srcStream == null) {
            return false;
        }
        OutputStream os = null;
        try {
            os = new BufferedOutputStream(new FileOutputStream(destFile));

            byte[] b = new byte[256];
            int len;
            while ((len = srcStream.read(b)) != -1) {
                os.write(b, 0, len);
            }
            os.flush();

        } catch (IOException e) {
            MxLog.e(TAG, e.toString());
            result = false;
        } finally {
            try {
                if (os != null) {
                    os.close();
                }
                if (srcStream != null) {
                    srcStream.close();
                }
            } catch (IOException e) {
                MxLog.e(TAG, e.toString());
                result = false;
            }
        }

        return result;
    }

    public static void safetyCloseStream(Closeable stream) {
        if (stream != null) {
            try {
                stream.close();
            } catch (IOException e) {
                //ignore it
            }
        }
    }

    //get file name from path
    public static String getScriptName(String path) {
        String scriptName = "no name";
        if (!TextUtils.isEmpty(path)) {
            try {
                scriptName = path.substring(path.lastIndexOf("/"));
            } catch (Exception e) {
                MxLog.e(TAG, e.toString());
            }
        }
        return scriptName;
    }
}
