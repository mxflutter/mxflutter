//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework.js.v8;

import android.text.TextUtils;
import com.debug.MXDebug;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8ScriptException;
import com.mojitox.mxflutter.framework.constants.JsConstant;
import com.mojitox.mxflutter.framework.utils.FileUtils;
import com.mojitox.mxflutter.framework.utils.MxLog;

/**
 * Created by wennliu on 2020-03-26
 */
public class V8JsModule {

    public static V8Object sGlobalModuleCache;
    private static final String TAG = "V8JsModule";

    public static void initGlobalModuleCache(V8 runtime) {
        if (sGlobalModuleCache == null) {
            sGlobalModuleCache = new V8Object(runtime);
            runtime.add("_loadedMoudleCache", sGlobalModuleCache);
        }
    }

    public static void clearModuleCache() {
        if (sGlobalModuleCache != null) {
            sGlobalModuleCache.close();
            sGlobalModuleCache = null;
        }
    }

    public static boolean isCached(String fullModulePath) {
        return sGlobalModuleCache.contains(fullModulePath);
    }

    public static V8Object getCacheModule(String fullModulePath) {
        return sGlobalModuleCache.getObject(fullModulePath);
    }

    public static void cacheModule(String fullModulePath, V8Object exports) {
        sGlobalModuleCache.add(fullModulePath, exports);
    }

    /**
     * 加载业务js文件并缓存
     */
    public static V8Object require(String moduleClassName, String fullModulePath, V8 runTime) throws Exception {
        if (TextUtils.isEmpty(moduleClassName) || TextUtils.isEmpty(fullModulePath) || runTime == null) {
            return null;
        }
        initGlobalModuleCache(runTime);
        if (isCached(fullModulePath)) {
            MxLog.w(TAG, "JSModule Use Cache " + moduleClassName);
            return getCacheModule(fullModulePath);
        }
        String script = FileUtils.getScriptFromPath(fullModulePath);
        V8Object platformObj = new V8Object(runTime);
        V8Object value;
        try {
            String exportScript = String.format(JsConstant.REQUIRE, script);
            String scriptName = FileUtils.getScriptName(moduleClassName);
            value = runTime.executeObjectScript(exportScript, scriptName, 0);
            MXDebug.INSTANCE.addScrips(scriptName, exportScript);
        } catch (V8ScriptException e) {
            MxLog.e(TAG, "V8ScriptException:JSFilePath:" + fullModulePath);
            throw e;
        }
        runTime.add("platform", platformObj);
        cacheModule(fullModulePath, value);
        return value;
    }
}