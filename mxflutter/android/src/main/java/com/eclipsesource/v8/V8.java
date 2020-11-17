/*******************************************************************************
 * Copyright (c) 2014 EclipseSource and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    EclipseSource - initial API and implementation
 ******************************************************************************/
package com.eclipsesource.v8;

import com.eclipsesource.v8.inspector.V8InspectorDelegate;
import com.eclipsesource.v8.utils.V8Executor;
import com.eclipsesource.v8.utils.V8Map;
import com.eclipsesource.v8.utils.V8Runnable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * An isolated V8Runtime. All JavaScript execution must exist
 * on a single runtime, and data is not shared between runtimes.
 * A runtime must be created and released when finished.
 *
 * All access to a runtime must come from the same thread, unless
 * the thread explicitly gives up control using the V8Locker.
 *
 * A public static factory method can be used to create the runtime.
 *
 * V8 runtime = V8.createV8Runtime();
 *
 */
public class V8 extends V8Object {

    private static Object lock                    = new Object();
    private volatile static int          runtimeCounter          = 0;
    private static String v8Flags                 = null;
    private static boolean               initialized             = false;
    protected Map<Long, V8Value> v8WeakReferences        = new HashMap<Long, V8Value>();

    private Map<String, Object> data                    = null;
    private final V8Locker               locker;
    private SignatureProvider            signatureProvider       = null;
    private long                         objectReferences        = 0;
    private long                         v8RuntimePtr            = 0;
    private List<Releasable> resources               = null;
    private V8Map<V8Executor>            executors               = null;
    private boolean                      forceTerminateExecutors = false;
    private Map<Long, MethodDescriptor> functionRegistry        = new HashMap<Long, MethodDescriptor>();
    private LinkedList<ReferenceHandler> referenceHandlers       = new LinkedList<ReferenceHandler>();
    private LinkedList<V8Runnable> releaseHandlers         = new LinkedList<V8Runnable>();

    private static boolean               nativeLibraryLoaded     = false;
    private static Error nativeLoadError         = null;
    private static Exception nativeLoadException     = null;
    private static V8Value               undefined               = new Undefined();
    private static Object invalid                 = new Object();

    private class MethodDescriptor {
        Object object;
        Method method;
        JavaCallback     callback;
        JavaVoidCallback voidCallback;
        boolean          includeReceiver;
    }

    private synchronized static void load(final String tmpDirectory) {
        try {
            LibraryLoader.loadLibrary(tmpDirectory);
            nativeLibraryLoaded = true;
        } catch (Error e) {
            nativeLoadError = e;
        } catch (Exception e) {
            nativeLoadException = e;
        }
    }

    /**
     * Determines if the native libraries are loaded.
     *
     * @return Returns true if the native libraries are loaded,
     * false otherwise.
     */
    public static boolean isLoaded() {
        return nativeLibraryLoaded;
    }

    /**
     * Sets the V8 flags on the platform. All runtimes will be created
     * with the same flags. Flags must be set before the runtime is
     * created.
     *
     * @param flags The flags to set on V8
     */
    public static void setFlags(final String flags) {
        v8Flags = flags;
        initialized = false;
    }

    /**
     * Creates a new V8Runtime and loads the required
     * native libraries if they are not already loaded.
     * The current thread is given the lock to this runtime.
     *
     * @return A new isolated V8 Runtime.
     */
    public static V8 createV8Runtime() {
        return createV8Runtime(null, null);
    }

    /**
     * Creates a new V8Runtime and loads the required native libraries if they
     * are not already loaded. An alias is also set for the global scope. For example,
     * 'window' can be set as the global scope name.
     *
     * The current thread is given the lock to this runtime.
     *
     * @param globalAlias The name to associate with the global scope.
     *
     * @return A new isolated V8 Runtime.
     */
    public static V8 createV8Runtime(final String globalAlias) {
        return createV8Runtime(globalAlias, null);
    }

    /**
     * Creates a new V8Runtime and loads the required native libraries if they
     * are not already loaded. An alias is also set for the global scope. For example,
     * 'window' can be set as the global scope name.
     *
     * The current thread is given the lock to this runtime.
     *
     * @param globalAlias The name to associate with the global scope.
     * @param tempDirectory The name of the directory to extract the native
     * libraries too.
     *
     * @return A new isolated V8 Runtime.
     */
    public static V8 createV8Runtime(final String globalAlias, final String tempDirectory) {
        if (!nativeLibraryLoaded) {
            synchronized (lock) {
                if (!nativeLibraryLoaded) {
                    load(tempDirectory);
                }
            }
        }
        checkNativeLibraryLoaded();
        if (!initialized) {
            _setFlags(v8Flags);
            initialized = true;
        }
        V8 runtime = new V8(globalAlias);
        synchronized (lock) {
            runtimeCounter++;
        }
        return runtime;
    }

    public void setSignatureProvider(final SignatureProvider signatureProvider) {
        this.signatureProvider = signatureProvider;
    }

    /**
     * Adds a ReferenceHandler to track when new V8Objects are created.
     *
     * @param handler The ReferenceHandler to add
     */
    public void addReferenceHandler(final ReferenceHandler handler) {
        referenceHandlers.add(0, handler);
    }

    /**
     * Adds a handler that will be called when the runtime is being released.
     * The runtime will still be available when the handler is executed.
     *
     * @param handler The handler to invoke when the runtime, is being released
     */
    public void addReleaseHandler(final V8Runnable handler) {
        releaseHandlers.add(handler);
    }

    /**
     * Removes an existing ReferenceHandler from the collection of reference handlers.
     * If the ReferenceHandler does not exist in the collection, it is ignored.
     *
     * @param handler The reference handler to remove
     */
    public void removeReferenceHandler(final ReferenceHandler handler) {
        referenceHandlers.remove(handler);
    }

    /**
     * Removes an existing release handler from the collection of release handlers.
     * If the release handler does not exist in the collection, it is ignored.
     *
     * @param handler The handler to remove
     */
    public void removeReleaseHandler(final V8Runnable handler) {
        releaseHandlers.remove(handler);
    }

    /**
     * Associates an arbitrary object with this runtime.
     *
     * @param key The key used to reference this object
     * @param value The object to associate with this runtime
     */
    public synchronized void setData(final String key, final Object value) {
        if (data == null) {
            data = new HashMap<String, Object>();
        }
        data.put(key, value);
    }

    /**
     * Returns the data object associated with this runtime, null if no object
     * has been associated.
     *
     * @param key The key used to reference this object
     *
     * @return The data object associated with this runtime, or null.
     */
    public Object getData(final String key) {
        if (data == null) {
            return null;
        }
        return data.get(key);
    }

    private void notifyReleaseHandlers(final V8 runtime) {
        for (V8Runnable handler : releaseHandlers) {
            handler.run(runtime);
        }
    }

    private void notifyReferenceCreated(final V8Value object) {
        for (ReferenceHandler referenceHandler : referenceHandlers) {
            referenceHandler.v8HandleCreated(object);
        }
    }

    private void notifyReferenceDisposed(final V8Value object) {
        for (ReferenceHandler referenceHandler : referenceHandlers) {
            referenceHandler.v8HandleDisposed(object);
        }
    }

    private static void checkNativeLibraryLoaded() {
        if (!nativeLibraryLoaded) {
            String vendorName = LibraryLoader.computeLibraryShortName(true);
            String baseName = LibraryLoader.computeLibraryShortName(false);
            String message = "J2V8 native library not loaded (" + baseName + "/" + vendorName + ")";

            if (nativeLoadError != null) {
                throw new IllegalStateException(message, nativeLoadError);
            } else if (nativeLoadException != null) {
                throw new IllegalStateException(message, nativeLoadException);
            } else {
                throw new IllegalStateException(message);
            }
        }
    }

    protected V8() {
        this(null);
    }

    protected V8(final String globalAlias) {
        super(null);
        released = false;
        v8RuntimePtr = _createIsolate(globalAlias);
        locker = new V8Locker(this);
        checkThread();
        objectHandle = _getGlobalObject(v8RuntimePtr);
    }

    public long createInspector(final V8InspectorDelegate inspectorDelegate, final String contextName) {
        return _createInspector(v8RuntimePtr, inspectorDelegate, contextName);
    }

    public void dispatchProtocolMessage(final long V8InspectorPtr, final String protocolMessage) {
        checkThread();
        _dispatchProtocolMessage(v8RuntimePtr, V8InspectorPtr, protocolMessage);
    }

    public void schedulePauseOnNextStatement(final long V8InspectorPtr, final String reason) {
        checkThread();
        _schedulePauseOnNextStatement(v8RuntimePtr, V8InspectorPtr, reason);
    }

    /**
     * Returns an UNDEFINED constant.
     *
     * @return The UNDEFINED constant value.
     */
    public static V8Value getUndefined() {
        return undefined;
    }

    /**
     * Returns the number of active runtimes.
     *
     * @return The number of active runtimes.
     */
    public static int getActiveRuntimes() {
        return runtimeCounter;
    }

    /**
     * Returns the number of Object References for this runtime.
     *
     * @return The number of Object References on this runtime.
     */
    public long getObjectReferenceCount() {
        return objectReferences - v8WeakReferences.size();
    }

    protected long getV8RuntimePtr() {
        return v8RuntimePtr;
    }

    /**
     * Gets the version of the V8 engine
     *
     * @return The version of the V8 Engine.
     */
    public static String getV8Version() {
        return _getVersion();
    }

    /**
     * Returns the revision ID of this version as specified
     * by the source code management system. Currently we use
     * Git, so this will return the commit ID for this revision.
     *
     * @return The revision ID of this version of J2V8
     */
    public static String getSCMRevision() {
        return "Unknown revision ID";
    }

    /*
     * (non-Javadoc)
     * @see com.eclipsesource.v8.V8Value#close()
     */
    @Override
    public void close() {
        release(true);
    }

    /*
     * (non-Javadoc)
     * @see com.eclipsesource.v8.V8Value#release()
     */
    @Override
    @Deprecated
    public void release() {
        release(true);
    }

    /**
     * Terminates any JavaScript executing on this runtime. Once
     * the runtime is released, any executors that were spawned
     * will also be force terminated.
     */
    public void terminateExecution() {
        forceTerminateExecutors = true;
        terminateExecution(v8RuntimePtr);
    }

    /**
     * Release native resources associated with this runtime. Once
     * released, a runtime cannot be reused.
     *
     * @param reportMemoryLeaks True if memory leaks should be
     * reported by throwing an IllegalStateException if any
     * objects were not released.
     */
    public void release(final boolean reportMemoryLeaks) {
        if (isReleased()) {
            return;
        }
        checkThread();
        try {
            notifyReleaseHandlers(this);
        } finally {
            releaseResources();
            shutdownExecutors(forceTerminateExecutors);
            if (executors != null) {
                executors.clear();
            }
            releaseNativeMethodDescriptors();
            synchronized (lock) {
                runtimeCounter--;
            }
            _releaseRuntime(v8RuntimePtr);
            v8RuntimePtr = 0L;
            released = true;
            if (reportMemoryLeaks && (getObjectReferenceCount() > 0)) {
                throw new IllegalStateException(getObjectReferenceCount() + " Object(s) still exist in runtime");
            }
        }
    }

    private void releaseNativeMethodDescriptors() {
        Set<Long> nativeMethodDescriptors = functionRegistry.keySet();
        for (Long nativeMethodDescriptor : nativeMethodDescriptors) {
            releaseMethodDescriptor(v8RuntimePtr, nativeMethodDescriptor);
        }
    }

    private void releaseResources() {
        if (resources != null) {
            for (Releasable releasable : resources) {
                releasable.release();
            }
            resources.clear();
            resources = null;
        }
    }

    /**
     * Registers an executor with this runtime. An executor is another
     * runtime with its own thread. By registering an executor, it can be
     * terminated when this runtime is released.
     *
     * @param key The key to associate the executor with.
     * @param executor The executor itself.
     */
    public void registerV8Executor(final V8Object key, final V8Executor executor) {
        checkThread();
        if (executors == null) {
            executors = new V8Map<V8Executor>();
        }
        executors.put(key, executor);
    }

    /**
     * Removes the executor from this runtime. The executor is
     * *NOT* shutdown, simply removed from the list of known
     * executors.
     *
     * @param key The key the executor was associated with.
     * @return The executor or null if it does not exist.
     */
    public V8Executor removeExecutor(final V8Object key) {
        checkThread();
        if (executors == null) {
            return null;
        }
        return executors.remove(key);
    }

    /**
     * Returns the executor associated with the given key.
     *
     * @param key The key the executor was associated with.
     * @return The executor or null if it does not exist.
     */
    public V8Executor getExecutor(final V8Object key) {
        checkThread();
        if (executors == null) {
            return null;
        }
        return executors.get(key);
    }

    /**
     * Shutdown all executors associated with this runtime.
     * If force terminate is specified, it will forcefully terminate
     * the executors, otherwise it will simply signal that they
     * should terminate.
     *
     * @param forceTerminate Specify if the executors should be
     * forcefully terminated, or simply notified to shutdown when ready.
     */
    public void shutdownExecutors(final boolean forceTerminate) {
        checkThread();
        if (executors == null) {
            return;
        }
        for (V8Executor executor : executors.values()) {
            if (forceTerminate) {
                executor.forceTermination();
            } else {
                executor.shutdown();
            }
        }
    }

    /**
     * Registers a resource with this runtime. All registered
     * resources will be released before the runtime is released.
     *
     * @param resource The resource to register.
     */
    public void registerResource(final Releasable resource) {
        checkThread();
        if (resources == null) {
            resources = new ArrayList<Releasable>();
        }
        resources.add(resource);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as an integer.
     * If the result is not an integer, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     *
     * @return The result of the script as an integer, or V8ResultUndefinedException if
     * the result is not an integer.
     */
    public int executeIntegerScript(final String script) {
        return executeIntegerScript(script, null, 0);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as an integer.
     * If the result is not an integer, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     * @param scriptName The name of the script
     * @param lineNumber The line number that is considered to be the first line of
     * the script. Typically 0, but could be set to another value for excepton purposes.
     *
     * @return The result of the script as an integer, or V8ResultUndefinedException if
     * the result is not an integer.
     */
    public int executeIntegerScript(final String script, final String scriptName, final int lineNumber) {
        checkThread();
        checkScript(script);
        return executeIntegerScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    protected void createTwin(final V8Value value, final V8Value twin) {
        checkThread();
        createTwin(v8RuntimePtr, value.getHandle(), twin.getHandle());
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a double.
     * If the result is not a double, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     *
     * @return The result of the script as a double, or V8ResultUndefinedException if
     * the result is not a double.
     */
    public double executeDoubleScript(final String script) {
        return executeDoubleScript(script, null, 0);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a double.
     * If the result is not a double, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     * @param scriptName The name of the script
     * @param lineNumber The line number that is considered to be the first line of
     * the script. Typically 0, but could be set to another value for exception stack trace purposes.
     *
     * @return The result of the script as a double, or V8ResultUndefinedException if
     * the result is not a double.
     */
    public double executeDoubleScript(final String script, final String scriptName, final int lineNumber) {
        checkThread();
        checkScript(script);
        return executeDoubleScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a String.
     * If the result is not a String, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     *
     * @return The result of the script as a String, or V8ResultUndefinedException if
     * the result is not a String.
     */
    public String executeStringScript(final String script) {
        return executeStringScript(script, null, 0);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a String.
     * If the result is not a String, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     * @param scriptName The name of the script
     * @param lineNumber The line number that is considered to be the first line of
     * the script. Typically 0, but could be set to another value for exception stack trace purposes.
     *
     * @return The result of the script as a String, or V8ResultUndefinedException if
     * the result is not a String.
     */
    public String executeStringScript(final String script, final String scriptName, final int lineNumber) {
        checkThread();
        checkScript(script);
        return executeStringScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a boolean.
     * If the result is not a boolean, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     *
     * @return The result of the script as a boolean, or V8ResultUndefinedException if
     * the result is not a boolean.
     */
    public boolean executeBooleanScript(final String script) {
        return executeBooleanScript(script, null, 0);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a boolean.
     * If the result is not a boolean, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     * @param scriptName The name of the script
     * @param lineNumber The line number that is considered to be the first line of
     * the script. Typically 0, but could be set to another value for exception stack trace purposes.
     *
     * @return The result of the script as a boolean, or V8ResultUndefinedException if
     * the result is not a boolean.
     */
    public boolean executeBooleanScript(final String script, final String scriptName, final int lineNumber) {
        checkThread();
        checkScript(script);
        return executeBooleanScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a V8Array.
     * If the result is not a V8Array, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     *
     * @return The result of the script as a V8Array, or V8ResultUndefinedException if
     * the result is not a V8Array.
     */
    public V8Array executeArrayScript(final String script) {
        return executeArrayScript(script, null, 0);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a V8Array.
     * If the result is not a V8Array, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     * @param scriptName The name of the script
     * @param lineNumber The line number that is considered to be the first line of
     * the script. Typically 0, but could be set to another value for exception stack trace purposes.
     *
     * @return The result of the script as a V8Array, or V8ResultUndefinedException if
     * the result is not a V8Array.
     */
    public V8Array executeArrayScript(final String script, final String scriptName, final int lineNumber) {
        checkThread();
        Object result = this.executeScript(script, scriptName, lineNumber);
        if (result instanceof V8Array) {
            return (V8Array) result;
        }
        throw new V8ResultUndefined();
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a Java Object.
     * Primitives will be boxed.
     *
     * @param script The script to execute.
     *
     * @return The result of the script as a Java Object.
     */
    public Object executeScript(final String script) {
        return executeScript(script, null, 0);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a Java Object.
     * Primitives will be boxed.
     *
     * @param script The script to execute.
     * @param uri The name of the script
     *
     * @return The result of the script as a Java Object.
     */
    public Object executeScript(final String script, final String uri) {
        checkThread();
        checkScript(script);
        return executeScript(getV8RuntimePtr(), UNKNOWN, script, uri, 0);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a Java Object.
     * Primitives will be boxed.
     *
     * @param script The script to execute.
     * @param uri The name of the script
     * @param lineNumber The line number that is considered to be the first line of
     * the script. Typically 0, but could be set to another value for exception stack trace purposes.
     *
     * @return The result of the script as a Java Object.
     */
    public Object executeScript(final String script, final String uri, final int lineNumber) {
        checkThread();
        checkScript(script);
        return executeScript(getV8RuntimePtr(), UNKNOWN, script, uri, lineNumber);
    }

    /**
     * Executes a JS Script module on this runtime and returns the result as a Java Object.
     * Primitives will be boxed.
     *
     * If the script does not match the signature (as verified with the public key) then a
     * V8SecurityException will be thrown.
     *
     * @param script The signed script to execute
     * @param modulePrefix The module prefix
     * @param modulePostfix The module postfix
     * @param uri The name of the script
     *
     * @return The result of the script as a Java Object.
     */
    public Object executeModule(final String script, final String modulePrefix, final String modulePostfix, final String uri) {
        checkThread();
        checkScript(script);
        return executeScript(getV8RuntimePtr(), UNKNOWN, modulePrefix + script + modulePostfix, uri, 0);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a V8Object.
     * If the result is not a V8Object, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     *
     * @return The result of the script as a V8Object, or V8ResultUndefinedException if
     * the result is not a V8Object.
     */
    public V8Object executeObjectScript(final String script) {
        return this.executeObjectScript(script, null, 0);
    }

    /**
     * Executes a JS Script on this runtime and returns the result as a V8Object.
     * If the result is not a V8Object, then a V8ResultUndefinedException is thrown.
     *
     * @param script The script to execute.
     * @param scriptName The name of the script
     * @param lineNumber The line number that is considered to be the first line of
     * the script. Typically 0, but could be set to another value for exception stack trace purposes.
     *
     * @return The result of the script as a V8Object, or V8ResultUndefinedException if
     * the result is not a V8Object.
     */
    public V8Object executeObjectScript(final String script, final String scriptName, final int lineNumber) {
        checkThread();
        Object result = this.executeScript(script, scriptName, lineNumber);
        if (result instanceof V8Object) {
            return (V8Object) result;
        }
        throw new V8ResultUndefined();
    }

    /**
     * Executes a JS Script on this runtime.
     *
     * @param script The script to execute.
     */
    public void executeVoidScript(final String script) {
        executeVoidScript(script, null, 0);
    }

    /**
     * Executes a JS Script on this runtime.
     *
     * @param script The script to execute.
     * @param scriptName The name of the script
     * @param lineNumber The line number that is considered to be the first line of
     * the script. Typically 0, but could be set to another value for exception stack trace purposes.
     */
    public void executeVoidScript(final String script, final String scriptName, final int lineNumber) {
        checkThread();
        checkScript(script);
        executeVoidScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    /**
     * Returns the locker associated with this runtime. The locker allows
     * threads to give up control of the runtime and other threads to acquire
     * control.
     *
     * @return The locker associated with this runtime.
     */
    public V8Locker getLocker() {
        return locker;
    }

    /**
     * Returns the unique build ID of the native library.
     *
     * @return The unique build ID of the Native library.
     */
    public static long getBuildID() {
        return _getBuildID();
    }

    /**
     * Indicates to V8 that the system is low on memory.
     * V8 may use this to attempt to recover space by running
     * the garbage collector.
     */
    public void lowMemoryNotification() {
        checkThread();
        lowMemoryNotification(getV8RuntimePtr());
    }

    void checkRuntime(final V8Value value) {
        if ((value == null) || value.isUndefined()) {
            return;
        }
        V8 runtime = value.getRuntime();
        if ((runtime == null) ||
                runtime.isReleased() ||
                (runtime != this)) {
            throw new Error("Invalid target runtime");
        }
    }

    void checkThread() {
        locker.checkThread();
        if (isReleased()) {
            throw new Error("Runtime disposed error");
        }
    }

    static void checkScript(final String script) {
        if (script == null) {
            throw new NullPointerException("Script is null");
        }
    }

    void registerCallback(final Object object, final Method method, final long objectHandle, final String jsFunctionName, final boolean includeReceiver) {
        MethodDescriptor methodDescriptor = new MethodDescriptor();
        methodDescriptor.object = object;
        methodDescriptor.method = method;
        methodDescriptor.includeReceiver = includeReceiver;
        long methodID = registerJavaMethod(getV8RuntimePtr(), objectHandle, jsFunctionName, isVoidMethod(method));
        functionRegistry.put(methodID, methodDescriptor);
    }

    void registerVoidCallback(final JavaVoidCallback callback, final long objectHandle, final String jsFunctionName) {
        MethodDescriptor methodDescriptor = new MethodDescriptor();
        methodDescriptor.voidCallback = callback;
        long methodID = registerJavaMethod(getV8RuntimePtr(), objectHandle, jsFunctionName, true);
        functionRegistry.put(methodID, methodDescriptor);
    }

    void registerCallback(final JavaCallback callback, final long objectHandle, final String jsFunctionName) {
        long methodID = registerJavaMethod(getV8RuntimePtr(), objectHandle, jsFunctionName, false);
        createAndRegisterMethodDescriptor(callback, methodID);
    }

    void createAndRegisterMethodDescriptor(final JavaCallback callback, final long methodID) {
        MethodDescriptor methodDescriptor = new MethodDescriptor();
        methodDescriptor.callback = callback;
        functionRegistry.put(methodID, methodDescriptor);
    }

    private boolean isVoidMethod(final Method method) {
        Class<?> returnType = method.getReturnType();
        if (returnType.equals(Void.TYPE)) {
            return true;
        }
        return false;
    }

    private Object getDefaultValue(final Class<?> type) {
        if (type.equals(V8Object.class)) {
            return new Undefined();
        } else if (type.equals(V8Array.class)) {
            return new V8Array.Undefined();
        }
        return invalid;
    }

    protected void disposeMethodID(final long methodID) {
        functionRegistry.remove(methodID);
    }

    protected void weakReferenceReleased(final long objectID) {
        V8Value v8Value = v8WeakReferences.get(objectID);
        if (v8Value != null) {
            v8WeakReferences.remove(objectID);
            try {
                v8Value.close();
            } catch (Exception e) {
                // Swallow these exceptions. The V8 GC is running, and
                // if we return to V8 with Java exception on our stack,
                // we will be in a world of hurt.
            }
        }
    }

    protected Object callObjectJavaMethod(final long methodID, final V8Object receiver, final V8Array parameters) throws Throwable {
        MethodDescriptor methodDescriptor = functionRegistry.get(methodID);
        if (methodDescriptor.callback != null) {
            return checkResult(methodDescriptor.callback.invoke(receiver, parameters));
        }
        boolean hasVarArgs = methodDescriptor.method.isVarArgs();
        Object[] args = getArgs(receiver, methodDescriptor, parameters, hasVarArgs);
        checkArgs(args);
        try {
            Object result = methodDescriptor.method.invoke(methodDescriptor.object, args);
            return checkResult(result);
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        } catch (IllegalAccessException e) {
            throw e;
        } catch (IllegalArgumentException e) {
            throw e;
        } finally {
            releaseArguments(args, hasVarArgs);
        }
    }

    private Object checkResult(final Object result) {
        if (result == null) {
            return result;
        }
        if (result instanceof Float) {
            return ((Float) result).doubleValue();
        }
        if ((result instanceof Integer) || (result instanceof Double) || (result instanceof Boolean)
                || (result instanceof String)) {
            return result;
        }
        if (result instanceof V8Value) {
            if (((V8Value) result).isReleased()) {
                throw new V8RuntimeException("V8Value already released");
            }
            return result;
        }
        throw new V8RuntimeException("Unknown return type: " + result.getClass());
    }

    protected void callVoidJavaMethod(final long methodID, final V8Object receiver, final V8Array parameters) throws Throwable {
        MethodDescriptor methodDescriptor = functionRegistry.get(methodID);
        if (methodDescriptor.voidCallback != null) {
            methodDescriptor.voidCallback.invoke(receiver, parameters);
            return;
        }
        boolean hasVarArgs = methodDescriptor.method.isVarArgs();
        Object[] args = getArgs(receiver, methodDescriptor, parameters, hasVarArgs);
        checkArgs(args);
        try {
            methodDescriptor.method.invoke(methodDescriptor.object, args);
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        } catch (IllegalAccessException e) {
            throw e;
        } catch (IllegalArgumentException e) {
            throw e;
        } finally {
            releaseArguments(args, hasVarArgs);
        }
    }

    private void checkArgs(final Object[] args) {
        for (Object argument : args) {
            if (argument == invalid) {
                throw new IllegalArgumentException("argument type mismatch");
            }
        }
    }

    private void releaseArguments(final Object[] args, final boolean hasVarArgs) {
        if (hasVarArgs && ((args.length > 0) && (args[args.length - 1] instanceof Object[]))) {
            Object[] varArgs = (Object[]) args[args.length - 1];
            for (Object object : varArgs) {
                if (object instanceof V8Value) {
                    ((V8Value) object).close();
                }
            }
        }
        for (Object arg : args) {
            if (arg instanceof V8Value) {
                ((V8Value) arg).close();
            }
        }
    }

    private Object[] getArgs(final V8Object receiver, final MethodDescriptor methodDescriptor, final V8Array parameters, final boolean hasVarArgs) {
        int numberOfParameters = methodDescriptor.method.getParameterTypes().length;
        int varArgIndex = hasVarArgs ? numberOfParameters - 1 : numberOfParameters;
        Object[] args = setDefaultValues(new Object[numberOfParameters], methodDescriptor.method.getParameterTypes(), receiver, methodDescriptor.includeReceiver);
        List<Object> varArgs = new ArrayList<Object>();
        populateParamters(parameters, varArgIndex, args, varArgs, methodDescriptor.includeReceiver);
        if (hasVarArgs) {
            Object varArgContainer = getVarArgContainer(methodDescriptor.method.getParameterTypes(), varArgs.size());
            System.arraycopy(varArgs.toArray(), 0, varArgContainer, 0, varArgs.size());
            args[varArgIndex] = varArgContainer;
        }
        return args;
    }

    private Object getVarArgContainer(final Class<?>[] parameterTypes, final int size) {
        Class<?> clazz = parameterTypes[parameterTypes.length - 1];
        if (clazz.isArray()) {
            clazz = clazz.getComponentType();
        }
        Object result = java.lang.reflect.Array.newInstance(clazz, size);
        return result;
    }

    private void populateParamters(final V8Array parameters, final int varArgIndex, final Object[] args, final List<Object> varArgs, final boolean includeReceiver) {
        int start = 0;
        if (includeReceiver) {
            start = 1;
        }
        for (int i = start; i < (parameters.length() + start); i++) {
            if (i >= varArgIndex) {
                varArgs.add(getArrayItem(parameters, i - start));
            } else {
                args[i] = getArrayItem(parameters, i - start);
            }
        }
    }

    private Object[] setDefaultValues(final Object[] parameters, final Class<?>[] parameterTypes, final V8Object receiver, final boolean includeReceiver) {
        int start = 0;
        if (includeReceiver) {
            start = 1;
            parameters[0] = receiver;
        }
        for (int i = start; i < parameters.length; i++) {
            parameters[i] = getDefaultValue(parameterTypes[i]);
        }
        return parameters;
    }

    private Object getArrayItem(final V8Array array, final int index) {
        try {
            int type = array.getType(index);
            switch (type) {
                case INTEGER:
                    return array.getInteger(index);
                case DOUBLE:
                    return array.getDouble(index);
                case BOOLEAN:
                    return array.getBoolean(index);
                case STRING:
                    return array.getString(index);
                case V8_ARRAY:
                case V8_TYPED_ARRAY:
                    return array.getArray(index);
                case V8_OBJECT:
                    return array.getObject(index);
                case V8_FUNCTION:
                    return array.getObject(index);
                case V8_ARRAY_BUFFER:
                    return array.get(index);
                case UNDEFINED:
                    return V8.getUndefined();
            }
        } catch (V8ResultUndefined e) {
            // do nothing
        }
        return null;
    }

    void createNodeRuntime(final String fileName) {
        _startNodeJS(v8RuntimePtr, fileName);
    }

    boolean pumpMessageLoop() {
        return _pumpMessageLoop(v8RuntimePtr);
    }

    boolean isRunning() {
        return _isRunning(v8RuntimePtr);
    }

    protected long initNewV8Object(final long v8RuntimePtr) {
        return _initNewV8Object(v8RuntimePtr);
    }

    protected long initEmptyContainer(final long v8RuntimePtr) {
        return _initEmptyContainer(v8RuntimePtr);
    }

    protected void acquireLock(final long v8RuntimePtr) {
        _acquireLock(v8RuntimePtr);
    }

    protected void releaseLock(final long v8RuntimePtr) {
        _releaseLock(v8RuntimePtr);
    }

    protected void lowMemoryNotification(final long v8RuntimePtr) {
        _lowMemoryNotification(v8RuntimePtr);
    }

    protected void createTwin(final long v8RuntimePtr, final long objectHandle, final long twinHandle) {
        _createTwin(v8RuntimePtr, objectHandle, twinHandle);
    }

    protected int executeIntegerScript(final long v8RuntimePtr, final String script, final String scriptName, final int lineNumber) {
        return _executeIntegerScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    protected double executeDoubleScript(final long v8RuntimePtr, final String script, final String scriptName, final int lineNumber) {
        return _executeDoubleScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    protected String executeStringScript(final long v8RuntimePtr, final String script, final String scriptName, final int lineNumber) {
        return _executeStringScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    protected boolean executeBooleanScript(final long v8RuntimePtr, final String script, final String scriptName, final int lineNumber) {
        return _executeBooleanScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    protected Object executeScript(final long v8RuntimePtr, final int expectedType, final String script, final String scriptName, final int lineNumber) {
        return _executeScript(v8RuntimePtr, expectedType, script, scriptName, lineNumber);
    }

    protected void executeVoidScript(final long v8RuntimePtr, final String script, final String scriptName, final int lineNumber) {
        _executeVoidScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    protected void setWeak(final long v8RuntimePtr, final long objectHandle) {
        _setWeak(v8RuntimePtr, objectHandle);
    }

    protected void clearWeak(final long v8RuntimePtr, final long objectHandle) {
        _clearWeak(v8RuntimePtr, objectHandle);
    }

    protected boolean isWeak(final long v8RuntimePtr, final long objectHandle) {
        return _isWeak(v8RuntimePtr, objectHandle);
    }

    protected void release(final long v8RuntimePtr, final long objectHandle) {
        _release(v8RuntimePtr, objectHandle);
    }

    protected boolean contains(final long v8RuntimePtr, final long objectHandle, final String key) {
        return _contains(v8RuntimePtr, objectHandle, key);
    }

    protected String[] getKeys(final long v8RuntimePtr, final long objectHandle) {
        return _getKeys(v8RuntimePtr, objectHandle);
    }

    protected int getInteger(final long v8RuntimePtr, final long objectHandle, final String key) {
        return _getInteger(v8RuntimePtr, objectHandle, key);
    }

    protected boolean getBoolean(final long v8RuntimePtr, final long objectHandle, final String key) {
        return _getBoolean(v8RuntimePtr, objectHandle, key);
    }

    protected double getDouble(final long v8RuntimePtr, final long objectHandle, final String key) {
        return _getDouble(v8RuntimePtr, objectHandle, key);
    }

    protected String getString(final long v8RuntimePtr, final long objectHandle, final String key) {
        return _getString(v8RuntimePtr, objectHandle, key);
    }

    protected Object get(final long v8RuntimePtr, final int expectedType, final long objectHandle, final String key) {
        return _get(v8RuntimePtr, expectedType, objectHandle, key);
    }

    protected int executeIntegerFunction(final long v8RuntimePtr, final long objectHandle, final String name, final long parametersHandle) {
        return _executeIntegerFunction(v8RuntimePtr, objectHandle, name, parametersHandle);
    }

    protected double executeDoubleFunction(final long v8RuntimePtr, final long objectHandle, final String name, final long parametersHandle) {
        return _executeDoubleFunction(v8RuntimePtr, objectHandle, name, parametersHandle);
    }

    protected String executeStringFunction(final long v8RuntimePtr, final long handle, final String name, final long parametersHandle) {
        return _executeStringFunction(v8RuntimePtr, handle, name, parametersHandle);
    }

    protected boolean executeBooleanFunction(final long v8RuntimePtr, final long handle, final String name, final long parametersHandle) {
        return _executeBooleanFunction(v8RuntimePtr, handle, name, parametersHandle);
    }

    protected Object executeFunction(final long v8RuntimePtr, final int expectedType, final long objectHandle, final String name, final long parametersHandle) {
        return _executeFunction(v8RuntimePtr, expectedType, objectHandle, name, parametersHandle);
    }

    protected Object executeFunction(final long v8RuntimePtr, final long receiverHandle, final long functionHandle, final long parametersHandle) {
        return _executeFunction(v8RuntimePtr, receiverHandle, functionHandle, parametersHandle);
    }

    protected void executeVoidFunction(final long v8RuntimePtr, final long objectHandle, final String name, final long parametersHandle) {
        _executeVoidFunction(v8RuntimePtr, objectHandle, name, parametersHandle);
    }

    protected boolean equals(final long v8RuntimePtr, final long objectHandle, final long that) {
        return _equals(v8RuntimePtr, objectHandle, that);
    }

    protected String toString(final long v8RuntimePtr, final long objectHandle) {
        return _toString(v8RuntimePtr, objectHandle);
    }

    protected boolean strictEquals(final long v8RuntimePtr, final long objectHandle, final long that) {
        return _strictEquals(v8RuntimePtr, objectHandle, that);
    }

    protected boolean sameValue(final long v8RuntimePtr, final long objectHandle, final long that) {
        return _sameValue(v8RuntimePtr, objectHandle, that);
    }

    protected int identityHash(final long v8RuntimePtr, final long objectHandle) {
        return _identityHash(v8RuntimePtr, objectHandle);
    }

    protected void add(final long v8RuntimePtr, final long objectHandle, final String key, final int value) {
        _add(v8RuntimePtr, objectHandle, key, value);
    }

    protected void addObject(final long v8RuntimePtr, final long objectHandle, final String key, final long value) {
        _addObject(v8RuntimePtr, objectHandle, key, value);
    }

    protected void add(final long v8RuntimePtr, final long objectHandle, final String key, final boolean value) {
        _add(v8RuntimePtr, objectHandle, key, value);
    }

    protected void add(final long v8RuntimePtr, final long objectHandle, final String key, final double value) {
        _add(v8RuntimePtr, objectHandle, key, value);
    }

    protected void add(final long v8RuntimePtr, final long objectHandle, final String key, final String value) {
        _add(v8RuntimePtr, objectHandle, key, value);
    }

    protected void addUndefined(final long v8RuntimePtr, final long objectHandle, final String key) {
        _addUndefined(v8RuntimePtr, objectHandle, key);
    }

    protected void addNull(final long v8RuntimePtr, final long objectHandle, final String key) {
        _addNull(v8RuntimePtr, objectHandle, key);
    }

    protected long registerJavaMethod(final long v8RuntimePtr, final long objectHandle, final String functionName, final boolean voidMethod) {
        return _registerJavaMethod(v8RuntimePtr, objectHandle, functionName, voidMethod);
    }

    protected long initNewV8ArrayBuffer(final long v8RuntimePtr, final ByteBuffer buffer, final int capacity) {
        return _initNewV8ArrayBuffer(v8RuntimePtr, buffer, capacity);
    }

    protected long initNewV8ArrayBuffer(final long v8RuntimePtr, final int capacity) {
        return _initNewV8ArrayBuffer(v8RuntimePtr, capacity);
    }

    public long initNewV8Int32Array(final long runtimePtr, final long bufferHandle, final int offset, final int size) {
        return _initNewV8Int32Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8Float32Array(final long runtimePtr, final long bufferHandle, final int offset, final int size) {
        return _initNewV8Float32Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8Float64Array(final long runtimePtr, final long bufferHandle, final int offset, final int size) {
        return _initNewV8Float64Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8UInt32Array(final long runtimePtr, final long bufferHandle, final int offset, final int size) {
        return _initNewV8UInt32Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8UInt16Array(final long runtimePtr, final long bufferHandle, final int offset, final int size) {
        return _initNewV8UInt16Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8Int16Array(final long runtimePtr, final long bufferHandle, final int offset, final int size) {
        return _initNewV8Int16Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8UInt8Array(final long runtimePtr, final long bufferHandle, final int offset, final int size) {
        return _initNewV8UInt8Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8Int8Array(final long runtimePtr, final long bufferHandle, final int offset, final int size) {
        return _initNewV8Int8Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8UInt8ClampedArray(final long runtimePtr, final long bufferHandle, final int offset, final int size) {
        return _initNewV8UInt8ClampedArray(runtimePtr, bufferHandle, offset, size);
    }


    protected ByteBuffer createV8ArrayBufferBackingStore(final long v8RuntimePtr, final long objectHandle, final int capacity) {
        return _createV8ArrayBufferBackingStore(v8RuntimePtr, objectHandle, capacity);
    }

    protected long initNewV8Array(final long v8RuntimePtr) {
        return _initNewV8Array(v8RuntimePtr);
    }

    protected long[] initNewV8Function(final long v8RuntimePtr) {
        checkThread();
        return _initNewV8Function(v8RuntimePtr);
    }

    protected int arrayGetSize(final long v8RuntimePtr, final long arrayHandle) {
        return _arrayGetSize(v8RuntimePtr, arrayHandle);
    }

    protected int arrayGetInteger(final long v8RuntimePtr, final long arrayHandle, final int index) {
        return _arrayGetInteger(v8RuntimePtr, arrayHandle, index);
    }

    protected boolean arrayGetBoolean(final long v8RuntimePtr, final long arrayHandle, final int index) {
        return _arrayGetBoolean(v8RuntimePtr, arrayHandle, index);
    }

    protected byte arrayGetByte(final long v8RuntimePtr, final long arrayHandle, final int index) {
        return _arrayGetByte(v8RuntimePtr, arrayHandle, index);
    }

    protected double arrayGetDouble(final long v8RuntimePtr, final long arrayHandle, final int index) {
        return _arrayGetDouble(v8RuntimePtr, arrayHandle, index);
    }

    protected String arrayGetString(final long v8RuntimePtr, final long arrayHandle, final int index) {
        return _arrayGetString(v8RuntimePtr, arrayHandle, index);
    }

    protected Object arrayGet(final long v8RuntimePtr, final int expectedType, final long arrayHandle, final int index) {
        return _arrayGet(v8RuntimePtr, expectedType, arrayHandle, index);
    }

    protected void addArrayIntItem(final long v8RuntimePtr, final long arrayHandle, final int value) {
        _addArrayIntItem(v8RuntimePtr, arrayHandle, value);
    }

    protected void addArrayBooleanItem(final long v8RuntimePtr, final long arrayHandle, final boolean value) {
        _addArrayBooleanItem(v8RuntimePtr, arrayHandle, value);
    }

    protected void addArrayDoubleItem(final long v8RuntimePtr, final long arrayHandle, final double value) {
        _addArrayDoubleItem(v8RuntimePtr, arrayHandle, value);
    }

    protected void addArrayStringItem(final long v8RuntimePtr, final long arrayHandle, final String value) {
        _addArrayStringItem(v8RuntimePtr, arrayHandle, value);
    }

    protected void addArrayObjectItem(final long v8RuntimePtr, final long arrayHandle, final long value) {
        _addArrayObjectItem(v8RuntimePtr, arrayHandle, value);
    }

    protected void addArrayUndefinedItem(final long v8RuntimePtr, final long arrayHandle) {
        _addArrayUndefinedItem(v8RuntimePtr, arrayHandle);
    }

    protected void addArrayNullItem(final long v8RuntimePtr, final long arrayHandle) {
        _addArrayNullItem(v8RuntimePtr, arrayHandle);
    }

    protected String getConstructorName(final long v8RuntimePtr, final long objectHandle) {
        return _getConstructorName(v8RuntimePtr, objectHandle);
    }

    protected int getType(final long v8RuntimePtr, final long objectHandle) {
        return _getType(v8RuntimePtr, objectHandle);
    }

    protected int getType(final long v8RuntimePtr, final long objectHandle, final String key) {
        return _getType(v8RuntimePtr, objectHandle, key);
    }

    protected int getType(final long v8RuntimePtr, final long objectHandle, final int index) {
        return _getType(v8RuntimePtr, objectHandle, index);
    }

    protected int getArrayType(final long v8RuntimePtr, final long objectHandle) {
        return _getArrayType(v8RuntimePtr, objectHandle);
    }

    protected int getType(final long v8RuntimePtr, final long objectHandle, final int index, final int length) {
        return _getType(v8RuntimePtr, objectHandle, index, length);
    }

    protected void setPrototype(final long v8RuntimePtr, final long objectHandle, final long prototypeHandle) {
        _setPrototype(v8RuntimePtr, objectHandle, prototypeHandle);
    }

    protected int[] arrayGetIntegers(final long v8RuntimePtr, final long objectHandle, final int index, final int length) {
        return _arrayGetIntegers(v8RuntimePtr, objectHandle, index, length);
    }

    protected double[] arrayGetDoubles(final long v8RuntimePtr, final long objectHandle, final int index, final int length) {
        return _arrayGetDoubles(v8RuntimePtr, objectHandle, index, length);
    }

    protected boolean[] arrayGetBooleans(final long v8RuntimePtr, final long objectHandle, final int index, final int length) {
        return _arrayGetBooleans(v8RuntimePtr, objectHandle, index, length);
    }

    protected byte[] arrayGetBytes(final long v8RuntimePtr, final long objectHandle, final int index, final int length) {
        return _arrayGetBytes(v8RuntimePtr, objectHandle, index, length);
    }

    protected String[] arrayGetStrings(final long v8RuntimePtr, final long objectHandle, final int index, final int length) {
        return _arrayGetStrings(v8RuntimePtr, objectHandle, index, length);
    }

    protected int arrayGetIntegers(final long v8RuntimePtr, final long objectHandle, final int index, final int length, final int[] resultArray) {
        return _arrayGetIntegers(v8RuntimePtr, objectHandle, index, length, resultArray);
    }

    protected int arrayGetDoubles(final long v8RuntimePtr, final long objectHandle, final int index, final int length, final double[] resultArray) {
        return _arrayGetDoubles(v8RuntimePtr, objectHandle, index, length, resultArray);
    }

    protected int arrayGetBooleans(final long v8RuntimePtr, final long objectHandle, final int index, final int length, final boolean[] resultArray) {
        return _arrayGetBooleans(v8RuntimePtr, objectHandle, index, length, resultArray);
    }

    protected int arrayGetBytes(final long v8RuntimePtr, final long objectHandle, final int index, final int length, final byte[] resultArray) {
        return _arrayGetBytes(v8RuntimePtr, objectHandle, index, length, resultArray);
    }

    protected int arrayGetStrings(final long v8RuntimePtr, final long objectHandle, final int index, final int length, final String[] resultArray) {
        return _arrayGetStrings(v8RuntimePtr, objectHandle, index, length, resultArray);
    }

    protected void terminateExecution(final long v8RuntimePtr) {
        _terminateExecution(v8RuntimePtr);
    }

    protected void releaseMethodDescriptor(final long v8RuntimePtr, final long methodDescriptor) {
        _releaseMethodDescriptor(v8RuntimePtr, methodDescriptor);
    }

    private native long _initNewV8Object(long v8RuntimePtr);

    private native long _initEmptyContainer(long v8RuntimePtr);

    private native void _acquireLock(long v8RuntimePtr);

    private native void _releaseLock(long v8RuntimePtr);

    private native void _lowMemoryNotification(long v8RuntimePtr);

    private native void _createTwin(long v8RuntimePtr, long objectHandle, long twinHandle);

    private native void _releaseRuntime(long v8RuntimePtr);

    private native long _createIsolate(String globalAlias);

    private native long _createInspector(long v8RuntimePtr, final V8InspectorDelegate inspectorDelegate, final String contextName);

    private native void _dispatchProtocolMessage(final long v8RuntimePtr, long v8InspectorPtr, final String protocolMessage);

    private native void _schedulePauseOnNextStatement(final long v8RuntimePtr, long v8InspectorPtr, final String reason);

    private native int _executeIntegerScript(long v8RuntimePtr, final String script, final String scriptName, final int lineNumber);

    private native double _executeDoubleScript(long v8RuntimePtr, final String script, final String scriptName, final int lineNumber);

    private native String _executeStringScript(long v8RuntimePtr, final String script, final String scriptName, final int lineNumber);

    private native boolean _executeBooleanScript(long v8RuntimePtr, final String script, final String scriptName, final int lineNumber);

    private native Object _executeScript(long v8RuntimePtr, int expectedType, String script, String scriptName, int lineNumber);

    private native void _executeVoidScript(long v8RuntimePtr, String script, String scriptName, int lineNumber);

    private native void _release(long v8RuntimePtr, long objectHandle);

    private native void _releaseMethodDescriptor(long v8RuntimePtr, long methodDescriptor);

    private native boolean _contains(long v8RuntimePtr, long objectHandle, final String key);

    private native String[] _getKeys(long v8RuntimePtr, long objectHandle);

    private native int _getInteger(long v8RuntimePtr, long objectHandle, final String key);

    private native boolean _getBoolean(long v8RuntimePtr, long objectHandle, final String key);

    private native double _getDouble(long v8RuntimePtr, long objectHandle, final String key);

    private native String _getString(long v8RuntimePtr, long objectHandle, final String key);

    private native Object _get(long v8RuntimePtr, int expectedType, long objectHandle, final String key);

    private native int _executeIntegerFunction(long v8RuntimePtr, long objectHandle, String name, long parametersHandle);

    private native double _executeDoubleFunction(long v8RuntimePtr, long objectHandle, String name, long parametersHandle);

    private native String _executeStringFunction(long v8RuntimePtr2, long handle, String name, long parametersHandle);

    private native boolean _executeBooleanFunction(long v8RuntimePtr2, long handle, String name, long parametersHandle);

    private native Object _executeFunction(long v8RuntimePtr, int expectedType, long objectHandle, String name, long parametersHandle);

    private native Object _executeFunction(long v8RuntimePtr, long receiverHandle, long functionHandle, long parametersHandle);

    private native void _executeVoidFunction(long v8RuntimePtr, long objectHandle, final String name, final long parametersHandle);

    private native boolean _equals(long v8RuntimePtr, long objectHandle, long that);

    private native String _toString(long v8RuntimePtr, long ObjectHandle);

    private native boolean _strictEquals(long v8RuntimePtr, long objectHandle, long that);

    private native boolean _sameValue(long v8RuntimePtr, long objectHandle, long that);

    private native int _identityHash(long v8RuntimePtr, long objectHandle);

    private native void _add(long v8RuntimePtr, long objectHandle, final String key, final int value);

    private native void _addObject(long v8RuntimePtr, long objectHandle, final String key, final long value);

    private native void _add(long v8RuntimePtr, long objectHandle, final String key, final boolean value);

    private native void _add(long v8RuntimePtr, long objectHandle, final String key, final double value);

    private native void _add(long v8RuntimePtr, long objectHandle, final String key, final String value);

    private native void _addUndefined(long v8RuntimePtr, long objectHandle, final String key);

    private native void _addNull(long v8RuntimePtr, long objectHandle, final String key);

    private native long _registerJavaMethod(long v8RuntimePtr, long objectHandle, final String functionName, final boolean voidMethod);

    private native long _initNewV8Array(long v8RuntimePtr);

    private native long[] _initNewV8Function(long v8RuntimePtr);

    private native int _arrayGetSize(long v8RuntimePtr, long arrayHandle);

    private native int _arrayGetInteger(long v8RuntimePtr, long arrayHandle, int index);

    private native boolean _arrayGetBoolean(long v8RuntimePtr, long arrayHandle, int index);

    private native byte _arrayGetByte(long v8RuntimePtr, long arrayHandle, int index);

    private native double _arrayGetDouble(long v8RuntimePtr, long arrayHandle, int index);

    private native String _arrayGetString(long v8RuntimePtr, long arrayHandle, int index);

    private native Object _arrayGet(long v8RuntimePtr, int expectedType, long arrayHandle, int index);

    private native void _addArrayIntItem(long v8RuntimePtr, long arrayHandle, int value);

    private native void _addArrayBooleanItem(long v8RuntimePtr, long arrayHandle, boolean value);

    private native void _addArrayDoubleItem(long v8RuntimePtr, long arrayHandle, double value);

    private native void _addArrayStringItem(long v8RuntimePtr, long arrayHandle, String value);

    private native void _addArrayObjectItem(long v8RuntimePtr, long arrayHandle, long value);

    private native void _addArrayUndefinedItem(long v8RuntimePtr, long arrayHandle);

    private native void _addArrayNullItem(long v8RuntimePtr, long arrayHandle);

    private native int _getType(long v8RuntimePtr, long objectHandle, final String key);

    private native int _getType(long v8RuntimePtr, long objectHandle, final int index);

    private native int _getArrayType(long v8RuntimePtr, long objectHandle);

    private native void _setPrototype(long v8RuntimePtr, long objectHandle, long prototypeHandle);

    private native String _getConstructorName(long v8RuntimePtr, long objectHandle);

    private native int _getType(long v8RuntimePtr, long objectHandle);

    private native int _getType(long v8RuntimePtr, long objectHandle, final int index, final int length);

    private native double[] _arrayGetDoubles(final long v8RuntimePtr, final long objectHandle, final int index, final int length);

    private native int[] _arrayGetIntegers(final long v8RuntimePtr, final long objectHandle, final int index, final int length);

    private native boolean[] _arrayGetBooleans(final long v8RuntimePtr, final long objectHandle, final int index, final int length);

    private native byte[] _arrayGetBytes(final long v8RuntimePtr, final long objectHandle, final int index, final int length);

    private native String[] _arrayGetStrings(final long v8RuntimePtr, final long objectHandle, final int index, final int length);

    private native int _arrayGetIntegers(final long v8RuntimePtr, final long objectHandle, final int index, final int length, int[] resultArray);

    private native int _arrayGetDoubles(final long v8RuntimePtr, final long objectHandle, final int index, final int length, double[] resultArray);

    private native int _arrayGetBooleans(final long v8RuntimePtr, final long objectHandle, final int index, final int length, boolean[] resultArray);

    private native int _arrayGetBytes(final long v8RuntimePtr, final long objectHandle, final int index, final int length, byte[] resultArray);

    private native int _arrayGetStrings(final long v8RuntimePtr, final long objectHandle, final int index, final int length, String[] resultArray);

    private native long _initNewV8ArrayBuffer(long v8RuntimePtr, int capacity);

    private native long _initNewV8ArrayBuffer(long v8RuntimePtr, ByteBuffer buffer, int capacity);

    private native long _initNewV8Int32Array(long runtimePtr, long bufferHandle, int offset, int size);

    private native long _initNewV8UInt32Array(long runtimePtr, long bufferHandle, int offset, int size);

    private native long _initNewV8Float32Array(long runtimePtr, long bufferHandle, int offset, int size);

    private native long _initNewV8Float64Array(long runtimePtr, long bufferHandle, int offset, int size);

    private native long _initNewV8Int16Array(long runtimePtr, long bufferHandle, int offset, int size);

    private native long _initNewV8UInt16Array(long runtimePtr, long bufferHandle, int offset, int size);

    private native long _initNewV8Int8Array(long runtimePtr, long bufferHandle, int offset, int size);

    private native long _initNewV8UInt8Array(long runtimePtr, long bufferHandle, int offset, int size);

    private native long _initNewV8UInt8ClampedArray(long runtimePtr, long bufferHandle, int offset, int size);

    private native void _setWeak(long runtimePtr, long objectHandle);

    private native void _clearWeak(long runtimePtr, long objectHandle);

    private native boolean _isWeak(long runtimePtr, long objectHandle);

    private native ByteBuffer _createV8ArrayBufferBackingStore(final long v8RuntimePtr, final long objectHandle, final int capacity);

    private native static String _getVersion();

    private static native void _setFlags(String v8flags);

    private native void _terminateExecution(final long v8RuntimePtr);

    private native long _getGlobalObject(final long v8RuntimePtr);

    private native static long _getBuildID();

    private native static void _startNodeJS(final long v8RuntimePtr, final String fileName);

    private native static boolean _pumpMessageLoop(final long v8RuntimePtr);

    private native static boolean _isRunning(final long v8RuntimePtr);

    private native static boolean _isNodeCompatible();

    public static boolean isNodeCompatible() {
        if (!nativeLibraryLoaded) {
            synchronized (lock) {
                if (!nativeLibraryLoaded) {
                    load(null);
                }
            }
        }
        return _isNodeCompatible();
    }

    void addObjRef(final V8Value reference) {
        objectReferences++;
        if (!referenceHandlers.isEmpty()) {
            notifyReferenceCreated(reference);
        }
    }

    void releaseObjRef(final V8Value reference) {
        if (!referenceHandlers.isEmpty()) {
            notifyReferenceDisposed(reference);
        }
        objectReferences--;
    }

}
