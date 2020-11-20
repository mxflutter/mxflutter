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
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

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

    /**
     * 文件写入
     *
     * @author haiyandu
     * @since 2011-11-21
     */
    public static boolean copy(InputStream srcStream, File destFile) {
        if (srcStream == null) {
            return false;
        }
        OutputStream os = null;
        try {
            os = new BufferedOutputStream(new FileOutputStream(destFile));

            byte[] b = new byte[256];
            int len = 0;
            while ((len = srcStream.read(b)) != -1) {
                os.write(b, 0, len);
            }
            os.flush();

        } catch (IOException e) {

            Log.e(TAG, e.toString());
            return false;
        } finally {
            try {
                if (os != null) {
                    os.close();
                }
                if (srcStream != null) {
                    srcStream.close();
                }
            } catch (IOException e) {

                Log.e(TAG, e.toString());
                return false;
            }
        }

        return true;
    }

    public static boolean safetyCloseStream(Closeable stream) {
        if (stream != null) {
            try {
                stream.close();
                return true;
            } catch (IOException e) {
                //ignore it
            }
        }
        return false;
    }
}
