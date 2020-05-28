//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework.utils;

import com.eclipsesource.v8.V8ScriptException;
import com.mojitox.mxflutter.MXFlutterPlugin;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/**
 * Created by wennliu on 2020-04-02
 * <p>
 * 业务可以根据需求，选择是否在主线程运行JS
 * 1.如果混合工程建议在子线程运行
 * 2.如果用MXFlutter作为主工程，可以在UI线程运行JS提升性能
 */

public class MXJsScheduledExecutorService {

    public static final String TAG = "MXScheduledExecutor";

    public static final String MX_JS_THREAD_POOL_PREFIX = "mx_js_pool_";

    public static boolean sRunOnUI = true;

    private ScheduledExecutorService executor;

    public MXJsScheduledExecutorService() {
        this.executor = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() {
            @Override
            public Thread newThread(Runnable r) {
                return new Thread(r, MX_JS_THREAD_POOL_PREFIX + r.hashCode());
            }
        });
    }

    public ScheduledFuture<?> schedule(MXJsTask command,
                                       long delay) {
        if (sRunOnUI) {
            MXFlutterPlugin.getInstance().getMainHandler().postDelayed(command, delay);
            return null;
        } else {
            return executor.schedule(command, delay, TimeUnit.MILLISECONDS);
        }
    }

    public void execute(MXJsTask command) {
        if (sRunOnUI) {
            command.run();
        } else {
            executor.execute(command);
        }
    }

    public static abstract class MXJsTask implements Runnable {

        protected MXJsTask() {
        }

        @Override
        public void run() {
            try {
                excute();
            } catch (V8ScriptException e) {
                android.util.Log.e(TAG, "V8ScriptException:JSMessage:" + e);
            }
        }

        public abstract void excute();
    }
}
