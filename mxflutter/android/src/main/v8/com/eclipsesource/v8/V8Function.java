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
package com.eclipsesource.v8;

/**
 * A V8Value that represents a JavaScript function.
 * JavaScript functions cannot be created in Java, but
 * can be returned as the result of invoking a JS script
 * or JS Function.
 */
public class V8Function extends V8Object {

    /**
     * Create a JavaScript function, that when invoked will call
     * the javaCallback passed to the receiver.
     *
     * @param v8 The v8 runtime on which to create this function
     * @param javaCallback The callback to invoke
     */
    public V8Function(final V8 v8, final JavaCallback javaCallback) {
        super(v8, javaCallback);
    }

    protected V8Function(final V8 v8) {
        this(v8, null);
    }

    @Override
    protected V8Value createTwin() {
        return new V8Function(v8);
    }

    /*
     * (non-Javadoc)
     * @see com.eclipsesource.v8.V8Object#toString()
     */
    @Override
    public String toString() {
        if (released || v8.isReleased()) {
            return "[Function released]";
        }
        return super.toString();
    }

    @Override
    protected void initialize(final long runtimePtr, final Object data) {
        if (data == null) {
            super.initialize(runtimePtr, null);
            return;
        }
        JavaCallback javaCallback = (JavaCallback) data;
        long[] pointers = v8.initNewV8Function(runtimePtr);
        // position 0 is the object reference, position 1 is the function reference
        v8.createAndRegisterMethodDescriptor(javaCallback, pointers[1]);
        released = false;
        addObjectReference(pointers[0]);
    }

    /*
     * (non-Javadoc)
     * @see com.eclipsesource.v8.V8Object#twin()
     */
    @Override
    public V8Function twin() {
        return (V8Function) super.twin();
    }

    /**
     * Invoke the JavaScript function on the current runtime.
     *
     * @param receiver The object on which to call the function on. The
     * receiver will be mapped to 'this' in JavaScript. If receiver is null
     * or undefined, then the V8 runtime will be used instead.
     * @param parameters The parameters passed to the JS Function.
     *
     * @return The result of JavaScript function.
     */
    @SuppressWarnings("resource")
    public Object call(V8Object receiver, final V8Array parameters) {
        v8.checkThread();
        checkReleased();
        v8.checkRuntime(receiver);
        v8.checkRuntime(parameters);
        receiver = receiver != null ? receiver : v8;
        long parametersHandle = parameters == null ? 0 : parameters.getHandle();
        long receiverHandle = receiver.isUndefined() ? v8.getHandle() : receiver.getHandle();
        return v8.executeFunction(v8.getV8RuntimePtr(), receiverHandle, objectHandle, parametersHandle);
    }

}
