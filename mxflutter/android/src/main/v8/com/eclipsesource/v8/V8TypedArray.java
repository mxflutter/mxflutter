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

/**
 * A representation of a JS TypedArray in Java. The typed array is simply a 'view' onto
 * a back buffer.
 */
public class V8TypedArray extends V8Array {

    /**
     * Create a new TypedArray from a specified ArrayBuffer, type, offset and size. For
     * example, a V8Int32Array is a typed array where each value is a 32-bit integer. The
     * typed array is backed by the V8ArrayBuffer.
     *
     * @param v8 The V8Runtime on which to create this Int32Array
     * @param type The type of Array to create. Currently Integer and Byte are supported.
     * @param buffer The buffer used to back the typed array
     * @param offset The offset into the buffer at which to start the the array
     * @param size The size of the typed array
     */
    public V8TypedArray(final V8 v8, final V8ArrayBuffer buffer, final int type, final int offset, final int size) {
        super(v8, new V8ArrayData(buffer, offset, size, type));
    }

    private V8TypedArray(final V8 v8) {
        super(v8);
    }

    @Override
    protected V8Value createTwin() {
        v8.checkThread();
        checkReleased();
        return new V8TypedArray(v8);
    }

    @Override
    public Object get(final int index) {
        v8.checkThread();
        checkReleased();
        int type = getType();
        switch (type) {
            case FLOAT_32_ARRAY:
                return ((Number) super.get(index)).floatValue();
            case FLOAT_64_ARRAY:
                return super.get(index);
            case INT_32_ARRAY:
                return super.get(index);
            case INT_16_ARRAY:
                return ((Number) super.get(index)).shortValue();
            case INT_8_ARRAY:
                return ((Number) super.get(index)).byteValue();
            case UNSIGNED_INT_16_ARRAY:
                return 0xFFFF & (Integer) super.get(index);
            case UNSIGNED_INT_32_ARRAY:
                return 0x00000000FFFFFFFF & ((Number) super.get(index)).longValue();
            case UNSIGNED_INT_8_CLAMPED_ARRAY:
                return (short) (0x00FF & ((Number) super.get(index)).byteValue());
            case UNSIGNED_INT_8_ARRAY:
                return (short) (0x00FF & ((Number) super.get(index)).shortValue());
        }
        return null;
    }

    /**
     * Provide access to the underlying ByteBuffer used for this TypedArray.
     * The V8ArrayBuffer must be released.
     *
     * @return The V8ArrayBuffer used to back this TypedArray.
     */
    public V8ArrayBuffer getBuffer() {
        return (V8ArrayBuffer) get("buffer");
    }

    @Override
    protected void initialize(final long runtimePtr, final Object data) {
        v8.checkThread();
        if (data == null) {
            super.initialize(runtimePtr, data);
            return;
        }
        V8ArrayData arrayData = (V8ArrayData) data;
        checkArrayProperties(arrayData);
        long handle = createTypedArray(runtimePtr, arrayData);
        released = false;
        addObjectReference(handle);
    }

    private long createTypedArray(final long runtimePtr, final V8ArrayData arrayData) {
        switch (arrayData.type) {
            case FLOAT_32_ARRAY:
                return v8.initNewV8Float32Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case FLOAT_64_ARRAY:
                return v8.initNewV8Float64Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case UNSIGNED_INT_32_ARRAY:
                return v8.initNewV8UInt32Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case INT_16_ARRAY:
                return v8.initNewV8Int16Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case UNSIGNED_INT_16_ARRAY:
                return v8.initNewV8UInt16Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case INTEGER:
                return v8.initNewV8Int32Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case UNSIGNED_INT_8_ARRAY:
                return v8.initNewV8UInt8Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case INT_8_ARRAY:
                return v8.initNewV8Int8Array(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            case UNSIGNED_INT_8_CLAMPED_ARRAY:
                return v8.initNewV8UInt8ClampedArray(runtimePtr, arrayData.buffer.objectHandle, arrayData.offset, arrayData.size);
            default:
                throw new IllegalArgumentException("Cannot create a typed array of type " + getStringRepresentation(arrayData.type));
        }
    }

    /**
     * Computes the size of the structures required for each TypedArray variation.
     *
     * @param type The type of the TypeArray
     * @return The size of the structures required
     */
    public static int getStructureSize(final int type) {
        switch (type) {
            case FLOAT_64_ARRAY:
                return 8;
            case INT_32_ARRAY:
            case UNSIGNED_INT_32_ARRAY:
            case FLOAT_32_ARRAY:
                return 4;
            case UNSIGNED_INT_16_ARRAY:
            case INT_16_ARRAY:
                return 2;
            case INT_8_ARRAY:
            case UNSIGNED_INT_8_ARRAY:
            case UNSIGNED_INT_8_CLAMPED_ARRAY:
                return 1;
            default:
                throw new IllegalArgumentException("Cannot create a typed array of type " + getStringRepresentation(type));
        }
    }

    private void checkArrayProperties(final V8ArrayData arrayData) {
        checkOffset(arrayData);
        checkSize(arrayData);
    }

    private void checkSize(final V8ArrayData arrayData) {
        if (arrayData.size < 0) {
            throw new IllegalStateException("RangeError: Invalid typed array length");
        }
        int limit = (arrayData.size * getStructureSize(arrayData.type)) + arrayData.offset;
        if (limit > arrayData.buffer.limit()) {
            throw new IllegalStateException("RangeError: Invalid typed array length");
        }
    }

    private void checkOffset(final V8ArrayData arrayData) {
        if ((arrayData.offset % getStructureSize(arrayData.type)) != 0) {
            throw new IllegalStateException("RangeError: Start offset of Int32Array must be a multiple of " + getStructureSize(arrayData.type));
        }
    }

    private static class V8ArrayData {
        private V8ArrayBuffer buffer;
        private int           offset;
        private int           size;
        private int           type;

        public V8ArrayData(final V8ArrayBuffer buffer, final int offset, final int size, final int type) {
            this.buffer = buffer;
            this.offset = offset;
            this.size = size;
            this.type = type;
        }
    }

}
