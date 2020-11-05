//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework;

import android.text.TextUtils;

import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8ScriptException;
import com.mojitox.mxflutter.framework.utils.ClassUtils;
import com.mojitox.mxflutter.framework.utils.FileUtils;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by wennliu on 2020-03-26
 */
public class JsModule {

    public static final String TAG = "JSModule";

    public static HashMap<String, String> CORE_MODULES = new HashMap<>();    //<moduleClassName, modulePath>

    public static HashMap<String, Class> CORE_MODULE_CLASSES = new HashMap<>();  //<moduleClassName, module Class>

    public static V8Object sGlobalModuleCache;

    public static JsModule sCurrentLoadingModule = null;

    V8Object mExports;

    private V8Object mContext;
    private String mId;
    private String mFileName;
    private boolean isLoaded;
    private WeakReference<JsModule> mParent;
    private ArrayList<WeakReference<JsModule>> mChildren = new ArrayList<>();

    public JsModule(String id, String fileName, V8Object context) {
        mId = id;
        mFileName = fileName;
        this.mContext = context;

        mExports = new V8Object(context.getRuntime());
    }

    public static void initGlobalModuleCache(V8 runtime) {
        sGlobalModuleCache = new V8Object(runtime);
        runtime.add("_loadedMoudleCache", sGlobalModuleCache);
    }

    public static boolean isCoreModule(String moduleClassName) {
        return CORE_MODULES.containsKey(moduleClassName);
    }

    public static Class classForModule(String moduleClassName) {
        if (isCoreModule(moduleClassName))
            return CORE_MODULE_CLASSES.get(moduleClassName);
        return JsModule.class;
    }

    public static void clearModuleCache(V8 runtime) {
        sGlobalModuleCache.close();
        sGlobalModuleCache = null;
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

    public static V8Object require(String moduleClassName, String fullModulePath, V8Object context) throws Exception{
        if (TextUtils.isEmpty(moduleClassName) || TextUtils.isEmpty(fullModulePath) || context == null)
            return null;

        if (isCached(fullModulePath)) {
            android.util.Log.i(TAG, "JSModule Use Cache " + moduleClassName);
            return getCacheModule(fullModulePath);
        }

        Class moduleClass = classForModule(moduleClassName);
        JsModule newModule = (JsModule) ClassUtils.getInstance(moduleClass,
                new Class[]{String.class, String.class, V8Object.class},
                new Object[]{fullModulePath, fullModulePath, context});

        String script = FileUtils.getScriptFromPath(fullModulePath);

        newModule.didStartLoading();

        V8Object platformObj = new V8Object(context.getRuntime());

        try {
            String exportScript = String.format("(function() { var module = { exports: {}}; var exports = module.exports; \n%s\n; return module.exports; })();", script);
            V8Object value = context.getRuntime().executeObjectScript(exportScript);

            if (value != null) {
                newModule.mExports = value;
            }

        } catch (V8ScriptException e) {
            android.util.Log.e(TAG, "V8ScriptException:JSMessage:" + e);
            android.util.Log.e(TAG, "V8ScriptException:JSFilePath:" + fullModulePath);
            throw e;
        }

        context.add("platform", platformObj);

        newModule.didFinishLoading();

        cacheModule(fullModulePath, newModule.mExports);

        return newModule.mExports;
    }

    private void didStartLoading() {
        mParent = new WeakReference<JsModule>(sCurrentLoadingModule);
        if (sCurrentLoadingModule != null) {
            sCurrentLoadingModule.mChildren.add(new WeakReference<JsModule>(this));
        }
        sCurrentLoadingModule = this;
    }

    private void didFinishLoading() {
        isLoaded = true;
        sCurrentLoadingModule = mParent.get();
    }


    public class Exports {

    }
}