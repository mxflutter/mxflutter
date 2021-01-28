package com.eclipsesource.v8.utils;
/*******************************************************************************
 * Copyright (c) 2019 EclipseSource and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    EclipseSource - initial API and implementation
 ******************************************************************************/

import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8ArrayBuffer;
import com.eclipsesource.v8.V8TypedArray;

/**
 * A lightweight handle to a V8TypedArray. This handle provides
 * access to a V8TypedArray. This handle does not need to be
 * closed, but if the type array is accessed using getV8TypedArray
 * then the result must be closed.
 *
 * The underlying V8TypedArray may be reclaimed by the JavaScript
 * garbage collector. To check if it's still available, use
 * isAvailable.
 */
public class TypedArray {

    private V8TypedArray typedArray;

    TypedArray(final V8TypedArray typedArray) {
        this.typedArray = (V8TypedArray) typedArray.twin().setWeak();
    }

    /**
     * Create a new TypedArray from an ArrayBuffer.
     *
     * @param v8 the V8Runtime on which to create the TypedArray
     * @param buffer the ArrayBuffer to use to back the TypedArray
     * @param type the Type of Array to create
     * @param offset the Offset into the ArrayBuffer in which to map the TyepdArray
     * @param size the Size of the TypedArray
     */
    public TypedArray(final V8 v8, final ArrayBuffer buffer, final int type, final int offset, final int size) {
        V8ArrayBuffer v8ArrayBuffer = buffer.getV8ArrayBuffer();
        V8TypedArray v8typedArray = new V8TypedArray(v8, v8ArrayBuffer, type, offset, size);
        try {
            typedArray = (V8TypedArray) v8typedArray.twin().setWeak();
        } finally {
            v8ArrayBuffer.close();
            v8typedArray.close();
        }
    }

    /**
     * Determine if the underlying V8TypedArray is still available, or if it's been cleaned up by the JavaScript
     * garbage collector.
     *
     * @return true if the underlying V8TypedArray is still available, false otherwise.
     */
    public boolean isAvailable() {
        return !typedArray.isReleased();
    }

    /**
     * Returns the underlying V8TypedArray.
     * @return the underlying V8TypedArray.
     */
    public V8TypedArray getV8TypedArray() {
        return (V8TypedArray) typedArray.twin();
    }

}
