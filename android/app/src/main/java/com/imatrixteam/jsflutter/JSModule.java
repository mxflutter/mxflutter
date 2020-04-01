//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.imatrixteam.jsflutter;

import android.text.TextUtils;

import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8ScriptException;
import com.imatrixteam.jsflutter.utils.ClassUtils;
import com.imatrixteam.jsflutter.utils.FileUtils;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import io.flutter.Log;

/**
 * Created by wennliu on 2020-03-26
 */
public class JSModule {

    public static final String TAG = "JSModule";

    public static HashMap<String, String> CORE_MODULES = new HashMap<>();    //<moduleClassName, modulePath>

    public static HashMap<String, Class> CORE_MODULE_CLASSES = new HashMap<>();  //<moduleClassName, module Class>

    public static V8Object sGlobalModuleCache;

    public static JSModule sCurrentLoadingModule = null;

    V8Object mExports;

    private V8Object mContext;
    private String mId;
    private String mFileName;
    private boolean isLoaded;
    private WeakReference<JSModule> mParent;
    private ArrayList<WeakReference<JSModule>> mChildren = new ArrayList<>();

    public JSModule(String id, String fileName, V8Object context) {
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
        return JSModule.class;
    }

    public static String coreModuleFullPath(String moduleClassName) {
        if (!isCoreModule(moduleClassName))
            return null;
        return CORE_MODULES.get(moduleClassName);
    }

    public static String resolveModuleAsFile(String moduleClassName) {
        return null;
    }

    public static String resolveModuleAsDirectory(String moduleClassName) {
        return null;
    }

    public static List nodeModulePaths(String start) {
        return new ArrayList();
    }

    public static String resolveAsNodeModule(String moduleClassName, String start) {
        return null;
    }

    public String resolve(String moduleClassName, String path) {
        if (TextUtils.isEmpty(moduleClassName) || TextUtils.isEmpty(path))
            return null;
        if (isCoreModule(moduleClassName)) {
            return coreModuleFullPath(moduleClassName);
        }
        String result;
        if (moduleClassName.endsWith("./") || moduleClassName.endsWith("/") || moduleClassName.endsWith("../")) {
            result = resolveModuleAsFile(path + moduleClassName);
            if (!TextUtils.isEmpty(result))
                return result;
            result = resolveModuleAsDirectory(path + moduleClassName);
            if (!TextUtils.isEmpty(result))
                return result;
        }
        return resolveAsNodeModule(moduleClassName, FileUtils.stringByDeletingLastPathComponent(path));
    }

    public static void clearModuleCache() {
//        initGlobalModuleCache(MXJSExecutor.getInstance(MXFlutterApplication.getApplication()).runtime);
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

    public static V8Object require(String moduleClassName, String fullModulePath, boolean fromAsset) {
        return require(moduleClassName, fullModulePath, MXJSExecutor.runtime, fromAsset);
    }

    public static V8Object require(String moduleClassName, String fullModulePath, V8Object context, boolean fromAsset) {
        if (TextUtils.isEmpty(moduleClassName) || TextUtils.isEmpty(fullModulePath) || context == null)
            return null;

        if (isCached(fullModulePath)) {
            Log.i(TAG, "JSModule Use Cache " + moduleClassName);
            return getCacheModule(fullModulePath);
        }

        Class moduleClass = classForModule(moduleClassName);
        JSModule newModule = (JSModule) ClassUtils.getInstance(moduleClass,
                new Class[]{String.class, String.class, V8Object.class},
                new Object[]{fullModulePath, fullModulePath, context});

        String script = FileUtils.getScriptFromPath(MXFlutterApplication.getApplication(), fullModulePath, fromAsset);

        newModule.didStartLoading();

        V8Object platformObj = new V8Object(context.getRuntime());

        try {
            String exportScript = String.format("(function() { var module = { exports: {}}; var exports = module.exports; \n%s\n; return module.exports; })();", script);
            V8Object value = (V8Object) context.getRuntime().executeObjectScript(exportScript);

            if (value != null) {
                newModule.mExports = value;
            }

        } catch (V8ScriptException e) {
            android.util.Log.e(TAG, "V8ScriptException:JSMessage:" + e);
            android.util.Log.e(TAG, "V8ScriptException:JSFilePath:" + fullModulePath);
        }

        context.add("platform", platformObj);

        newModule.didFinishLoading();

        cacheModule(fullModulePath, newModule.mExports);

        return newModule.mExports;
    }

    private void didStartLoading() {
        mParent = new WeakReference<JSModule>(sCurrentLoadingModule);
        if (sCurrentLoadingModule != null) {
            sCurrentLoadingModule.mChildren.add(new WeakReference<JSModule>(this));
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