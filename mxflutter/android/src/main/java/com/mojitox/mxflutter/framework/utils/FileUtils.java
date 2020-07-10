//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework.utils;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;

import com.mojitox.mxflutter.MXFlutterPlugin;
import com.mojitox.mxflutter.framework.MXJSFlutterApp;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static android.os.Looper.getMainLooper;
import static android.os.Looper.myLooper;

public class FileUtils {

    public static final String TAG = "FileUtils";

    public static String getScriptFromPath(Context context, String filename, boolean fromAsset) {
        assertJSThread();

        if (fromAsset) {
            return getScriptFromAssets(context, filename);
        } else {
            return getScriptFromFS(context, filename);
        }
    }

    public static String getScriptFromAssets(Context context, String fileName) {
        assertJSThread();

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

    public static String getScriptFromFS(Context context, String fileName) {
        assertJSThread();

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

    public static String getFilePathFromAsset(Context context, String filePath, ArrayList<String> searchDirArray) {

        String absolutePath = "";

        String prefix = "./";
        if (filePath.startsWith(prefix)) {
            filePath = filePath.substring(prefix.length());
        }

        //映射package/ 到mx_package/
        String packagePrefix = "packages/";
        String packagePath = filePath;
        if (packagePath.startsWith(packagePrefix)) {
            packagePath = packagePath.substring(packagePrefix.length());
            packagePath = "mx_packages/" + packagePath;

            absolutePath = getFilePathFromAssetExt(context, packagePath, searchDirArray);
            if (!TextUtils.isEmpty(absolutePath)) {
                return absolutePath;
            }
        }

        //映射xx/package/xx 到xx/mx_package/xx
        absolutePath = getFilePathFromAssetExt(context, filePath, searchDirArray);
        if (!TextUtils.isEmpty(absolutePath)) {
            return absolutePath;
        }

        String replacePath = filePath.replace("/packages/", "/mx_packages/");
        absolutePath = getFilePathFromAssetExt(context, replacePath, searchDirArray);
        return absolutePath;
    }


    public static String getFilePathFromAssetExt(Context context, String filePath, ArrayList<String> searchDirArray) {
        assertJSThread();

        String prefix = "./";
        if (filePath.startsWith(prefix)) {
            filePath = filePath.substring(prefix.length());
        }

        String[] filePathSplitList = filePath.split("/");
        int filePathDeep = filePathSplitList.length;

        String absolutePath = "";

        ArrayList<String> extensions = new ArrayList<>();
        extensions.add(".js");
        extensions.add(".ddc.js");
        extensions.add(".lib.js");

        try {
            for (int i = 0; i < searchDirArray.size(); i++) {
                String curSearchDir = searchDirArray.get(i);

                for (int j = 0; j < filePathDeep; j++) {
                    String[] files = context.getAssets().list(curSearchDir);
                    boolean isFind = false;
                    for (int k = 0; k < files.length; k++) {
                        if (j == filePathDeep - 1) {
                            if (filePathSplitList[j].endsWith(".js")) {
                                if (filePathSplitList[j].equals(files[k])) {
                                    curSearchDir += ("/" + filePathSplitList[j]);
                                    absolutePath = curSearchDir;
                                    isFind = true;
                                    break;
                                }
                            } else {
                                for (String ext : extensions) {
                                    String tempFile = filePathSplitList[j] + ext;

                                    if (tempFile.equals(files[k])) {
                                        curSearchDir += ("/" + tempFile);
                                        absolutePath = curSearchDir;
                                        isFind = true;
                                        break;
                                    }
                                }
                            }
                        } else if (filePathSplitList[j].equals(files[k])) {
                            curSearchDir += ("/" + filePathSplitList[j]);
                            isFind = true;
                        }
                        if (isFind) {
                            break;
                        }
                    }
                    if (!isFind) {
                        break;
                    }
                }
                if (!TextUtils.isEmpty(absolutePath)) {
                    break;
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "", e);
        }

        return absolutePath;
    }

    public static String getFilePathFromFS(Context context, String filePath, ArrayList<String> searchDirArray) {

        String absolutePath = "";

        String prefix = "./";
        if (filePath.startsWith(prefix)) {
            filePath = filePath.substring(prefix.length());
        }

        //映射package/ 到mx_package/
        String packagePrefix = "packages/";
        String packagePath = filePath;
        if (packagePath.startsWith(packagePrefix)) {
            packagePath = packagePath.substring(packagePrefix.length());
            packagePath = "mx_packages/" + packagePath;

            absolutePath = getFilePathFromFSExt(context, packagePath, searchDirArray);
            if (!TextUtils.isEmpty(absolutePath)) {
                return absolutePath;
            }
        }

        //映射xx/package/xx 到xx/mx_package/xx
        absolutePath = getFilePathFromFSExt(context, filePath, searchDirArray);
        if (!TextUtils.isEmpty(absolutePath)) {
            return absolutePath;
        }

        String replacePath = filePath.replace("/packages/", "/mx_packages/");
        absolutePath = getFilePathFromFSExt(context, replacePath, searchDirArray);
        return absolutePath;
    }

    public static String getFilePathFromFSExt(Context context, String filePath, ArrayList<String> searchDirArray) {
        assertJSThread();

        String prefix = "./";
        if (filePath.startsWith(prefix)) {
            filePath = filePath.substring(prefix.length());
        }

        String absolutePath = "";

        ArrayList<String> extensions = new ArrayList<>();
        extensions.add(".js");
        extensions.add(".ddc.js");
        extensions.add(".lib.js");

        for (String dir : searchDirArray) {
            for (String ext : extensions) {
                String absolutePathTemp = MXFlutterPlugin.JSFLUTTER_LOCAL_DIR + "/" + dir + "/" + filePath;
                if (!filePath.endsWith(".js")) {
                    absolutePathTemp = absolutePathTemp + ext;
                }
                File file = new File(absolutePathTemp);
                if (file.exists()) {
                    absolutePath = absolutePathTemp;
                    break;
                }
            }
            if (absolutePath.length() > 0) {
                break;
            }
        }
        return absolutePath;
    }

    public static void copyFilesFromAssetsAsync(Context context, List<MXJSFlutterApp.MXRoute> routes) {
        copyFilesFromAssetsAsync(context, routes, 0);
    }

    private static void copyFilesFromAssetsAsync(Context context, List<MXJSFlutterApp.MXRoute> routes, int deep) {
        assertNotUiThread();

        InputStream input = null;
        FileOutputStream output = null;
        try {
            int i;
            for (MXJSFlutterApp.MXRoute route : routes) {
                ArrayList<String> fileNames = new ArrayList<>();

                List<String> childPaths = Arrays.asList(context.getAssets().list(route.assetsPath));
                for (int j = 0; j < childPaths.size(); j++) {
                    childPaths.set(j, route.assetsPath + "/" + childPaths.get(j));
                }
                fileNames.addAll(childPaths);

                File file = new File(route.localPath);
                if (fileNames != null && fileNames.size() > 0) {
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    for (i = 0; i < fileNames.size(); i++) {
                        String assetsFileName = fileNames.get(i);
                        String filePaths[] = assetsFileName.split("/");
                        copyFilesFromAssetsAsync(context,
                                Arrays.asList(new MXJSFlutterApp.MXRoute(assetsFileName, route.localPath + "/" + filePaths[filePaths.length - 1])), deep + 1);
                    }
                } else {
                    if (file.exists()) {
                        return;
                    }

                    input = context.getAssets().open(route.assetsPath);
                    output = new FileOutputStream(new File(route.localPath));
                    byte[] buffer = new byte[4096];
                    int len = 0;
                    while ((len = input.read(buffer)) != -1) {
                        output.write(buffer, 0, len);
                    }
                    output.flush();
                    return;
                }
            }

            //拷贝完成
            if (deep == 0) {
                setCpiedFileFromAssets(context);
                MXFlutterPlugin.setJSFrameworkPath("mxflutter/js_lib");
                MXFlutterPlugin.setJSAppPathAndAppSearchPathList("mxflutter_js_src", null);
            }
        } catch (FileNotFoundException e) {
            Log.e(TAG, "", e);
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
    }

    public static boolean isNeedCopyFileFromAssets(Context context) {
        if (MXFlutterPlugin.sUseAsset) {
            return false;
        }

        return !isCopiedFileFromAssets(context);
    }

    private static boolean sCopiedFileFromAssets;

    public static boolean isCopiedFileFromAssets(Context context) {
        if (MXFlutterPlugin.sUseAsset) {
            return false;
        }
        if (!sCopiedFileFromAssets) {
            sCopiedFileFromAssets = context.getSharedPreferences("mx_sp", Context.MODE_PRIVATE).getBoolean("copied_file_from_assets", false);
        }
        return sCopiedFileFromAssets;
    }

    public static void setCpiedFileFromAssets(Context context) {
        context.getSharedPreferences("mx_sp", Context.MODE_PRIVATE).edit().putBoolean("copied_file_from_assets", true).apply();
        sCopiedFileFromAssets = true;
    }

    public static String stringByDeletingLastPathComponent(String path) {
        int index = path.lastIndexOf("/");
        return path.substring(index);
    }

    public static void assertUiThread() {
        if (myLooper() != getMainLooper()) {
            throw new IllegalStateException(
                    "Must be called from UI thread. Current thread: "
                            + Thread.currentThread());
        }
    }

    public static void assertNotUiThread() {
        if (myLooper() == getMainLooper()) {
            throw new IllegalStateException(
                    "Must be called from Not UI thread. Current thread: "
                            + Thread.currentThread());
        }
    }

    public static void assertJSThread() {
        if (MXJsScheduledExecutorService.sRunOnUI) {
            assertUiThread();
        } else if (!Thread.currentThread().getName().startsWith(MXJsScheduledExecutorService.MX_JS_THREAD_POOL_PREFIX)) {
            throw new IllegalStateException(
                    "Must be called from JS thread. Current thread: "
                            + Thread.currentThread());
        }
    }
}
