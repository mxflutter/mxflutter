/*******************************************************************************
 * Copyright (c) 2015 EclipseSource and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    EclipseSource - initial API and implementation
 ******************************************************************************/
package com.eclipsesource.v8.utils;

import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Object;
import java.util.LinkedList;

/**
 * Executes a JS Script on a new V8 runtime in its own thread, and once finished,
 * will optionally wait on a message queue. If the executor is *not* long running,
 * when the JS Script finishes, the executor will shutdown. If the executor
 * *is* long running, the the script will execute, and when finished, the executor
 * will wait for messages to arrive. When messages arrive, the messageHandler
 * will be invoked with the contents of the message.
 *
 * Executors can be shutdown in two different ways. forceTermination() will
 * stop any executing scripts and immediately terminate the executor. shutdown()
 * will indicate that the executor should shutdown, but this will only happen
 * once any scripts finish executing and the message queue becomes empty.
 */
public class V8Executor extends Thread {

    private final String script;
    private V8                   runtime;
    private String result;
    private volatile boolean     terminated       = false;
    private volatile boolean     shuttingDown     = false;
    private volatile boolean     forceTerminating = false;
    private Exception exception        = null;
    private LinkedList<String[]> messageQueue     = new LinkedList<String[]>();
    private boolean              longRunning;
    private String messageHandler;

    /**
     * Create a new executor and execute the given script on it. Once
     * the script has finished executing, the executor can optionally
     * wait on a message queue.
     *
     * @param script The script to execute on this executor.
     * @param longRunning True to indicate that this executor should be longRunning.
     * @param messageHandler The name of the message handler that should be notified
     *        when messages are delivered.
     */
    public V8Executor(final String script, final boolean longRunning, final String messageHandler) {
        this.script = script;
        this.longRunning = longRunning;
        this.messageHandler = messageHandler;
    }

    /**
     * Create a new executor and execute the given script on it.
     *
     * @param script The script to execute on this executor.
     */
    public V8Executor(final String script) {
        this(script, false, null);
    }

    /**
     * Override to provide a custom setup for this V8 runtime.
     * This method can be overridden to configure the V8 runtime,
     * for example, to add callbacks or to add some additional
     * functionality to the global scope.
     *
     * @param runtime The runtime to configure.
     */
    protected void setup(final V8 runtime) {

    }

    /**
     * Gets the result of the JavaScript that was executed
     * on this executor.
     *
     * @return The result of the JS Script that was executed on
     * this executor.
     */
    public String getResult() {
        return result;
    }

    /**
     * Posts a message to the receiver to be processed by the executor
     * and sent to the V8 runtime via the messageHandler.
     *
     * @param message The message to send to the messageHandler
     */
    public void postMessage(final String... message) {
        synchronized (this) {
            messageQueue.add(message);
            notify();
        }
    }

    /*
     * (non-Javadoc)
     * @see java.lang.Thread#run()
     */
    @Override
    public void run() {
        synchronized (this) {
            runtime = V8.createV8Runtime();
            runtime.registerJavaMethod(new ExecutorTermination(), "__j2v8__checkThreadTerminate");
            setup(runtime);
        }
        try {
            if (!forceTerminating) {
                Object scriptResult = runtime.executeScript("__j2v8__checkThreadTerminate();\n" + script, getName(), -1);
                if (scriptResult != null) {
                    result = scriptResult.toString();
                }
                if (scriptResult instanceof Releasable) {
                    ((Releasable) scriptResult).release();
                }
            }
            while (!forceTerminating && longRunning) {
                synchronized (this) {
                    if (messageQueue.isEmpty() && !shuttingDown) {
                        wait();
                    }
                    if ((messageQueue.isEmpty() && shuttingDown) || forceTerminating) {
                        return;
                    }
                }
                if (!messageQueue.isEmpty()) {
                    String[] message = messageQueue.remove(0);
                    V8Array parameters = new V8Array(runtime);
                    V8Array strings = new V8Array(runtime);
                    try {
                        for (String string : message) {
                            strings.push(string);
                        }
                        parameters.push(strings);
                        runtime.executeVoidFunction(messageHandler, parameters);
                    } finally {
                        strings.close();
                        parameters.close();
                    }
                }
            }
        } catch (Exception e) {
            exception = e;
        } finally {
            synchronized (this) {
                if (runtime.getLocker().hasLock()) {
                    runtime.close();
                    runtime = null;
                }
                terminated = true;
            }
        }
    }

    /**
     * Determines if an exception was thrown during the JavaScript execution.
     *
     * @return True if an exception was thrown during the JavaScript execution,
     * false otherwise.
     */
    public boolean hasException() {
        return exception != null;
    }

    /**
     * Gets the exception that was thrown during the JavaScript execution.
     *
     * @return The exception that was thrown during the JavaScript execution,
     * or null if no such exception was thrown.
     */
    public Exception getException() {
        return exception;
    }

    /**
     * Determines if the executor has terminated.
     *
     * @return True if the executor has terminated, false otherwise.
     */
    public boolean hasTerminated() {
        return terminated;
    }

    /**
     * Forces the executor to shutdown immediately. Any currently executing
     * JavaScript will be interrupted and all outstanding messages will be
     * ignored.
     */
    public void forceTermination() {
        synchronized (this) {
            forceTerminating = true;
            shuttingDown = true;
            if (runtime != null) {
                runtime.terminateExecution();
            }
            notify();
        }
    }

    /**
     * Indicates to the executor that it should shutdown. Any currently
     * executing JavaScript will be allowed to finish, and any outstanding
     * messages will be processed. Only once the message queue is empty,
     * will the executor actually shtutdown.
     */
    public void shutdown() {
        synchronized (this) {
            shuttingDown = true;
            notify();
        }
    }

    /**
     * Returns true if shutdown() or forceTermination() was called to
     * shutdown this executor.
     *
     * @return True if shutdown() or forceTermination() was called, false otherwise.
     */
    public boolean isShuttingDown() {
        return shuttingDown;
    }

    /**
     * Returns true if forceTermination was called to shutdown
     * this executor.
     *
     * @return True if forceTermination() was called, false otherwise.
     */
    public boolean isTerminating() {
        return forceTerminating;
    }

    class ExecutorTermination implements JavaVoidCallback {
        @Override
        public void invoke(final V8Object receiver, final V8Array parameters) {
            if (forceTerminating) {
                throw new RuntimeException("V8Thread Termination");
            }
        }
    }
}