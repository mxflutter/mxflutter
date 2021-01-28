package com.mojitox.mxflutter.framework.executor;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public interface ThreadExecutor extends Executor {

    @Override
    void execute(Runnable command);

    void schedule(Runnable command, long delay, TimeUnit unit);
}