//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework.executor;

import androidx.annotation.NonNull;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class JobExecutor implements ThreadExecutor {

    public static final String MX_JS_THREAD_POOL_PREFIX = "mx_js_pool_";
    private static final AtomicInteger threadNumber = new AtomicInteger(1);
    private boolean runUi;

    public void setRunUi(boolean runUi) {
        this.runUi = runUi;
    }

    private final ScheduledExecutorService scheduler;

    public JobExecutor() {
        this.scheduler = Executors.newSingleThreadScheduledExecutor();
    }

    @Override
    public void execute(@NonNull Runnable command) {
        if (runUi) {
            UiThread.post(command);
        } else {
            this.scheduler.execute(command);
        }
    }

    @Override
    public void schedule(Runnable command, long delay, TimeUnit unit) {
        if (runUi) {
            UiThread.post(command);
        } else {
            this.scheduler.schedule(command, delay, unit);
        }
    }

    public static class JobThreadFactory implements ThreadFactory {

        @Override
        public Thread newThread(@NonNull Runnable runnable) {
            String name = MX_JS_THREAD_POOL_PREFIX + "#" + threadNumber.getAndIncrement();
            if (runnable instanceof JsTask) {
                name = ((JsTask) runnable).getTaskName();
            }
            return new Thread(runnable, name);
        }
    }


    private static String getExecutingMethodName() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StackTraceElement e = stackTrace[2];
        return e.getMethodName();
    }

    public ScheduledExecutorService getScheduler() {
        return scheduler;
    }
}