/*******************************************************************************
 * Copyright (c) 2016 EclipseSource and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    EclipseSource - initial API and implementation
 ******************************************************************************/
package com.eclipsesource.v8;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * An isolate NodeJS runtime.
 *
 * This class is only available on some platforms. In particular any methods
 * on this class, on an Android device, will lead to an UnsupportedOperationException.
 */
public class NodeJS {

    private static final String TMP_JS_EXT          = ".js.tmp";
    private static final String NEXT_TICK           = "nextTick";
    private static final String PROCESS             = "process";
    private static final String GLOBAL              = "global";
    private static final String STARTUP_CALLBACK    = "__run";
    private static final String STARTUP_SCRIPT      = "global." + STARTUP_CALLBACK + "(require, exports, module, __filename, __dirname);";
    private static final String STARTUP_SCRIPT_NAME = "startup";
    private static final String VERSIONS            = "versions";
    private static final String NODE                = "node";
    private String nodeVersion         = null;

    private V8         v8;
    private V8Function require;

    /**
     * Creates a NodeJS Runtime
     *
     * @return The NodeJS runtime.
     *
     * May throw an UnsupportedOperationException if node.js integration has not
     * been compiled for your platform.
     */
    public static NodeJS createNodeJS() {
        return createNodeJS(null);
    }

    /**
     * Returns the version of Node.js that is runtime is built against.
     * This uses process.versions.node to get the version.
     *
     * @return The version of Node.js.
     */
    public String getNodeVersion() {
        if (nodeVersion != null) {
            return nodeVersion;
        }
        V8Object process = null;
        V8Object versions = null;
        try {
            process = v8.getObject(PROCESS);
            versions = process.getObject(VERSIONS);
            nodeVersion = versions.getString(NODE);
        } finally {
            safeRelease(process);
            safeRelease(versions);
        }
        return nodeVersion;
    }

    /**
     * Creates a NodeJS runtime and executes a JS Script
     *
     * @param file The JavaScript to execute or null for no script.
     * @return The NodeJS runtime.
     *
     * May throw an UnsupportedOperationException if node.js integration has not
     * been compiled for your platform.
     */
    public static NodeJS createNodeJS(final File file) {
        V8 v8 = V8.createV8Runtime(GLOBAL);
        final NodeJS node = new NodeJS(v8);
        v8.registerJavaMethod(new JavaVoidCallback() {

            @Override
            public void invoke(final V8Object receiver, final V8Array parameters) {
                V8Function require = (V8Function) parameters.get(0);
                try {
                    node.init(require.twin());
                } finally {
                    require.close();
                }
            }
        }, STARTUP_CALLBACK);
        try {
            File startupScript = createTemporaryScriptFile(STARTUP_SCRIPT, STARTUP_SCRIPT_NAME);
            try {
                v8.createNodeRuntime(startupScript.getAbsolutePath());
            } finally {
                startupScript.delete();
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        if (file != null) {
            node.exec(file);
        }
        return node;
    }

    /**
     * Returns the V8 runtime being used for this NodeJS instance.
     *
     * @return The V8 Runtime.
     */
    public V8 getRuntime() {
        return v8;
    }

    /**
     * Handles the next message in the message loop. Returns True
     * if there are more messages to handle, false otherwise.
     *
     * @return True if there are more messages to handle, false otherwise.
     */
    public boolean handleMessage() {
        v8.checkThread();
        return v8.pumpMessageLoop();
    }

    /**
     * Releases the NodeJS runtime.
     */
    public void release() {
        v8.checkThread();
        if (!require.isReleased()) {
            require.close();
        }
        if (!v8.isReleased()) {
            v8.close();
        }
    }

    /**
     * Returns true if there are more messages to process, false otherwise.
     *
     * @return True if there are more messages to process, false otherwise.
     */
    public boolean isRunning() {
        v8.checkThread();
        return v8.isRunning();
    }

    /**
     * Invokes NodeJS require() on the specified file. This will load the module, execute
     * it and return the exports object to the caller. The exports object must be released.
     *
     * @param file The module to load.
     * @return The exports object.
     */
    public V8Object require(final File file) {
        v8.checkThread();
        V8Array requireParams = new V8Array(v8);
        try {
            requireParams.push(file.getAbsolutePath());
            return (V8Object) require.call(null, requireParams);
        } finally {
            requireParams.close();
        }
    }

    /**
     * Execute a NodeJS script. This will load the script and execute it on the
     * next tick. This is the same as how NodeJS executes scripts at startup. Since
     * the script won't actually run until the next tick, this method does not return
     * a result.
     *
     * @param file The script to execute.
     */
    public void exec(final File file) {
        V8Function scriptExecution = createScriptExecutionCallback(file);
        V8Object process = null;
        V8Array parameters = null;
        try {
            process = v8.getObject(PROCESS);
            parameters = new V8Array(v8);
            parameters.push(scriptExecution);
            process.executeObjectFunction(NEXT_TICK, parameters);
        } finally {
            safeRelease(process);
            safeRelease(parameters);
            safeRelease(scriptExecution);
        }
    }

    private V8Function createScriptExecutionCallback(final File file) {
        V8Function v8Function = new V8Function(v8, new JavaCallback() {
            @Override
            public Object invoke(final V8Object receiver, final V8Array parameters) {
                V8Array requireParams = new V8Array(v8);
                try {
                    requireParams.push(file.getAbsolutePath());
                    return require.call(null, requireParams);
                } finally {
                    requireParams.close();
                }
            }
        });
        return v8Function;
    }

    private void safeRelease(final Releasable releasable) {
        if (releasable != null) {
            releasable.release();
        }
    }

    private NodeJS(final V8 v8) {
        this.v8 = v8;
    }

    private void init(final V8Function require) {
        this.require = require;
    }

    private static File createTemporaryScriptFile(final String script, final String name) throws IOException {
        File tempFile = File.createTempFile(name, TMP_JS_EXT);
        PrintWriter writer = new PrintWriter(tempFile, "UTF-8");
        try {
            writer.print(script);
        } finally {
            writer.close();
        }
        return tempFile;
    }
}
