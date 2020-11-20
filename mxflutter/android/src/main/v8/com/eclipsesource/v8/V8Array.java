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

/**
 * A V8Value that represents a JavaScript array.
 * JavaScript Arrays contain elements by index, but
 * can also contain elements by 'key' which is why V8Array
 * extends V8Object.
 */
public class V8Array extends V8Object {

    protected V8Array() {

    }

    /**
     * Creates a new V8Array and associates it with the given runtime.
     * V8Arrays have native resources and as such, must be released.
     *
     * @param v8 The runtime on which to associate the V8Array.
     */
    public V8Array(final V8 v8) {
        super(v8);
        v8.checkThread();
    }

    protected V8Array(final V8 v8, final Object data) {
        super(v8, data);
    }

    @Override
    protected V8Value createTwin() {
        return new V8Array(v8);
    }

    /*
     * (non-Javadoc)
     * @see com.eclipsesource.v8.V8Object#twin()
     */
    @Override
    public V8Array twin() {
        return (V8Array) super.twin();
    }

    /*
     * (non-Javadoc)
     * @see com.eclipsesource.v8.V8Object#toString()
     */
    @Override
    public String toString() {
        if (released || v8.isReleased()) {
            return "[Array released]";
        }
        return super.toString();
    }

    @Override
    protected void initialize(final long runtimePtr, final Object data) {
        long handle = v8.initNewV8Array(runtimePtr);
        released = false;
        addObjectReference(handle);
    }

    /**
     * Returns the length of this array.
     *
     * @return The length of the array.
     */
    public int length() {
        v8.checkThread();
        checkReleased();
        return v8.arrayGetSize(v8.getV8RuntimePtr(), getHandle());
    }

    /**
     * Returns the type of element at this given index.
     *
     * @param index The index at which to lookup the type of.
     *
     * @return The type of the element at the index.
     */
    public int getType(final int index) {
        v8.checkThread();
        checkReleased();
        return v8.getType(v8.getV8RuntimePtr(), getHandle(), index);
    }

    /**
     * Gets the type of the array. Returns a 'type' if all the elements in the array
     * have the same type, otherwise UNDEFINED is returned.
     *
     * @return The type of all the elements of the array, or UNDEFINED if they
     * are not all the same type.
     */
    public int getType() {
        v8.checkThread();
        checkReleased();
        return v8.getArrayType(v8.getV8RuntimePtr(), getHandle());
    }

    /**
     * Gets the type of a subset of the array. The subset is specified by a start index
     * and a length. UNDEFINED is returned if all the elements in the subset are not
     * of the same type.
     *
     * @param index The start index.
     * @param length The length.
     *
     * @return The type of the subset of the array or UNDEFINED if the subset is not
     * all the same type.
     */
    public int getType(final int index, final int length) {
        v8.checkThread();
        checkReleased();
        return v8.getType(v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    /**
     * Returns the integer value associated at this index. If the value
     * at this index does not exist, or if it's not an integer, then
     * V8ResultUndefined exception is thrown.
     *
     * @param index The index whose value to return.
     *
     * @return The integer value at this index or V8ResultUndefined
     * if the index does not exist or the value is not an integer.
     */
    public int getInteger(final int index) {
        v8.checkThread();
        checkReleased();
        return v8.arrayGetInteger(v8.getV8RuntimePtr(), getHandle(), index);
    }

    /**
     * Returns the boolean value associated at this index. If the value
     * at this index does not exist, or if it's not a boolean, then
     * V8ResultUndefined exception is thrown.
     *
     * @param index The index whose value to return.
     *
     * @return The boolean value at this index or V8ResultUndefined
     * if the index does not exist or the value is not a boolean.
     */
    public boolean getBoolean(final int index) {
        v8.checkThread();
        checkReleased();
        return v8.arrayGetBoolean(v8.getV8RuntimePtr(), getHandle(), index);
    }

    /**
     * Returns the byte value associated at this index. If the value at
     * this index does not exist, or cannot be cast to a byte, then
     * V8ResultUndefined exception is thrown.
     *
     * @param index The index whose value to return
     * @return The byte value at this index or V8ResultUndefined
     * if the index does not exist or the value cannot be cast to a byte.
     */
    public byte getByte(final int index) {
        v8.checkThread();
        checkReleased();
        return v8.arrayGetByte(v8.getV8RuntimePtr(), getHandle(), index);
    }

    /**
     * Returns the double value associated at this index. If the value
     * at this index does not exist, or if it's not a double, then
     * V8ResultUndefined exception is thrown.
     *
     * @param index The index whose value to return.
     *
     * @return The double value at this index or V8ResultUndefined
     * if the index does not exist or the value is not a double.
     */
    public double getDouble(final int index) {
        v8.checkThread();
        checkReleased();
        return v8.arrayGetDouble(v8.getV8RuntimePtr(), getHandle(), index);
    }

    /**
     * Returns the String value associated at this index. If the value
     * at this index does not exist, or if it's not a String, then
     * V8ResultUndefined exception is thrown.
     *
     * @param index The index whose value to return.
     *
     * @return The String value at this index or V8ResultUndefined
     * if the index does not exist or the value is not a String.
     */
    public String getString(final int index) {
        v8.checkThread();
        checkReleased();
        return v8.arrayGetString(v8.getV8RuntimePtr(), getHandle(), index);
    }

    /**
     * Returns the integers contained in a subset of a V8Array. If the subset
     * contains elements other than integers, then a V8ResultUndefined exception
     * is thrown. Furthermore, if the subset is not entirely contained within the array,
     * then V8ResultUndefined exception is also thrown.
     *
     * @param index The starting index.
     * @param length The length.
     *
     * @return The integers contained in the subset of the array, or V8ResultUndefined
     * exception.
     */
    public int[] getIntegers(final int index, final int length) {
        v8.checkThread();
        checkReleased();
        return v8.arrayGetIntegers(v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    /**
     * Gets the integers contained in a subset of a V8Array. If the subset
     * contains elements other than integers, then a V8ResultUndefined exception
     * is thrown. Furthermore, if the subset is not entirely contained within the array,
     * then V8ResultUndefined exception is also thrown. Finally, if the resultArray
     * is not large enough to hold the results then IndexOutOfBoundsException is thrown.
     *
     * @param index The starting index.
     * @param length The length.
     * @param resultArray The array to put the results in.
     *
     * @return The number of elements added to the array.
     */
    public int getIntegers(final int index, final int length, final int[] resultArray) {
        v8.checkThread();
        checkReleased();
        if (length > resultArray.length) {
            throw new IndexOutOfBoundsException();
        }
        return v8.arrayGetIntegers(v8.getV8RuntimePtr(), getHandle(), index, length, resultArray);
    }

    /**
     * Returns the doubles contained in a subset of a V8Array. If the subset
     * contains elements other than doubles, then a V8ResultUndefined exception
     * is thrown. Furthermore, if the subset is not entirely contained within the array,
     * then V8ResultUndefined exception is also thrown.
     *
     * @param index The starting index.
     * @param length The length.
     *
     * @return The doubles contained in the subset of the array, or V8ResultUndefined
     * exception.
     */
    public double[] getDoubles(final int index, final int length) {
        v8.checkThread();
        checkReleased();
        return v8.arrayGetDoubles(v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    /**
     * Gets the doubles contained in a subset of a V8Array. If the subset
     * contains elements other than doubles, then a V8ResultUndefined exception
     * is thrown. Furthermore, if the subset is not entirely contained within the array,
     * then V8ResultUndefined exception is also thrown. Finally, if the resultArray
     * is not large enough to hold the results then IndexOutOfBoundsException is thrown.
     *
     * @param index The starting index.
     * @param length The length.
     * @param resultArray The array to put the results in.
     *
     * @return The number of elements added to the array.
     */
    public int getDoubles(final int index, final int length, final double[] resultArray) {
        v8.checkThread();
        checkReleased();
        if (length > resultArray.length) {
            throw new IndexOutOfBoundsException();
        }
        return v8.arrayGetDoubles(v8.getV8RuntimePtr(), getHandle(), index, length, resultArray);
    }

    /**
     * Returns the booleans contained in a subset of a V8Array. If the subset
     * contains elements other than booleans, then a V8ResultUndefined exception
     * is thrown. Furthermore, if the subset is not entirely contained within the array,
     * then V8ResultUndefined exception is also thrown.
     *
     * @param index The starting index.
     * @param length The length.
     *
     * @return The booleans contained in the subset of the array, or V8ResultUndefined
     * exception.
     */
    public boolean[] getBooleans(final int index, final int length) {
        v8.checkThread();
        checkReleased();
        return v8.arrayGetBooleans(v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    /**
     * Returns the bytes contained in a subset of a V8Array. If the subset
     * contains elements that cannot be cast to bytes, then a V8ResultUndefined exception
     * is thrown. Furthermore, if the subset is not entirely contained within the array,
     * then V8ResultUndefined exception is also thrown.
     *
     * @param index The starting index.
     * @param length The length.
     *
     * @return The bytes contained in the subset of the array, or V8ResultUndefined
     * exception.
     */
    public byte[] getBytes(final int index, final int length) {
        v8.checkThread();
        checkReleased();
        return v8.arrayGetBytes(v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    /**
     * Gets the booleans contained in a subset of a V8Array. If the subset
     * contains elements other than booleans, then a V8ResultUndefined exception
     * is thrown. Furthermore, if the subset is not entirely contained within the array,
     * then V8ResultUndefined exception is also thrown. Finally, if the resultArray
     * is not large enough to hold the results then IndexOutOfBoundsException is thrown.
     *
     * @param index The starting index.
     * @param length The length.
     * @param resultArray The array to put the results in.
     *
     * @return The number of elements added to the array.
     */
    public int getBooleans(final int index, final int length, final boolean[] resultArray) {
        v8.checkThread();
        checkReleased();
        if (length > resultArray.length) {
            throw new IndexOutOfBoundsException();
        }
        return v8.arrayGetBooleans(v8.getV8RuntimePtr(), getHandle(), index, length, resultArray);
    }

    /**
     * Gets the bytes contained in a subset of a V8Array. If the subset
     * contains elements that cannot be cast to bytes, then a V8ResultUndefined exception
     * is thrown. Furthermore, if the subset is not entirely contained within the array,
     * then V8ResultUndefined exception is also thrown. Finally, if the resultArray
     * is not large enough to hold the results then IndexOutOfBoundsException is thrown.
     *
     * @param index The starting index.
     * @param length The length.
     * @param resultArray The array to put the results in.
     *
     * @return The number of elements added to the array.
     */
    public int getBytes(final int index, final int length, final byte[] resultArray) {
        v8.checkThread();
        checkReleased();
        if (length > resultArray.length) {
            throw new IndexOutOfBoundsException();
        }
        return v8.arrayGetBytes(v8.getV8RuntimePtr(), getHandle(), index, length, resultArray);
    }

    /**
     * Returns the Strings contained in a subset of a V8Array. If the subset
     * contains elements other than Strings, then a V8ResultUndefined exception
     * is thrown. Furthermore, if the subset is not entirely contained within the array,
     * then V8ResultUndefined exception is also thrown.
     *
     * @param index The starting index.
     * @param length The length.
     *
     * @return The Strings contained in the subset of the array, or V8ResultUndefined
     * exception.
     */
    public String[] getStrings(final int index, final int length) {
        v8.checkThread();
        checkReleased();
        return v8.arrayGetStrings(v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    /**
     * Gets the Strings contained in a subset of a V8Array. If the subset
     * contains elements other than Strings, then a V8ResultUndefined exception
     * is thrown. Furthermore, if the subset is not entirely contained within the array,
     * then V8ResultUndefined exception is also thrown. Finally, if the resultArray
     * is not large enough to hold the results then IndexOutOfBoundsException is thrown.
     *
     * @param index The starting index.
     * @param length The length.
     * @param resultArray The array to put the results in.
     *
     * @return The number of elements added to the array.
     */
    public int getStrings(final int index, final int length, final String[] resultArray) {
        v8.checkThread();
        checkReleased();
        if (length > resultArray.length) {
            throw new IndexOutOfBoundsException();
        }
        return v8.arrayGetStrings(v8.getV8RuntimePtr(), getHandle(), index, length, resultArray);
    }

    /**
     * Gets the value at a given index as a Java Object. Primitives are boxed.
     *
     * @param index The index to get the value at.
     *
     * @return The value at the given index.
     */
    public Object get(final int index) {
        v8.checkThread();
        checkReleased();
        return v8.arrayGet(v8.getV8RuntimePtr(), V8_OBJECT, objectHandle, index);
    }

    /**
     * Returns the V8Array value associated at this index. If the value
     * at this index does not exist, or if it's not a V8Array, then
     * V8ResultUndefined exception is thrown.
     *
     * @param index The index whose value to return.
     *
     * @return The V8Array value at this index or V8ResultUndefined
     * if the index does not exist or the value is not a V8Array.
     */
    public V8Array getArray(final int index) {
        v8.checkThread();
        checkReleased();
        Object result = v8.arrayGet(v8.getV8RuntimePtr(), V8_ARRAY, objectHandle, index);
        if ((result == null) || (result instanceof V8Array)) {
            return (V8Array) result;
        }
        throw new V8ResultUndefined();
    }

    /**
     * Returns the V8Object value associated at this index. If the value
     * at this index does not exist, or if it's not a V8Object, then
     * V8ResultUndefined exception is thrown.
     *
     * @param index The index whose value to return.
     *
     * @return The V8Object value at this index or V8ResultUndefined
     * if the index does not exist or the value is not a V8Object.
     */
    public V8Object getObject(final int index) {
        v8.checkThread();
        checkReleased();
        Object result = v8.arrayGet(v8.getV8RuntimePtr(), V8_OBJECT, objectHandle, index);
        if ((result == null) || (result instanceof V8Object)) {
            return (V8Object) result;
        }
        throw new V8ResultUndefined();
    }

    /**
     * Pushes an integer value to the next available spot in the Array. In
     * particular, this[length] = value;
     *
     * @param value The value to push to the array.
     *
     * @return The receiver.
     */
    public V8Array push(final int value) {
        v8.checkThread();
        checkReleased();
        v8.addArrayIntItem(v8.getV8RuntimePtr(), getHandle(), value);
        return this;
    }

    /**
     * Pushes a boolean value to the next available spot in the Array. In
     * particular, this[length] = value;
     *
     * @param value The value to push to the array.
     *
     * @return The receiver.
     */
    public V8Array push(final boolean value) {
        v8.checkThread();
        checkReleased();
        v8.addArrayBooleanItem(v8.getV8RuntimePtr(), getHandle(), value);
        return this;
    }

    /**
     * Pushes a double value to the next available spot in the Array. In
     * particular, this[length] = value;
     *
     * @param value The value to push to the array.
     *
     * @return The receiver.
     */
    public V8Array push(final double value) {
        v8.checkThread();
        checkReleased();
        v8.addArrayDoubleItem(v8.getV8RuntimePtr(), getHandle(), value);
        return this;
    }

    /**
     * Pushes a String value to the next available spot in the Array. In
     * particular, this[length] = value;
     *
     * @param value The value to push to the array.
     *
     * @return The receiver.
     */
    public V8Array push(final String value) {
        v8.checkThread();
        checkReleased();
        if (value == null) {
            v8.addArrayNullItem(v8.getV8RuntimePtr(), getHandle());
        } else if (value.equals(V8.getUndefined())) {
            v8.addArrayUndefinedItem(v8.getV8RuntimePtr(), getHandle());
        } else {
            v8.addArrayStringItem(v8.getV8RuntimePtr(), getHandle(), value);
        }
        return this;
    }

    /**
     * Pushes a V8Value to the next available spot in the Array. In
     * particular, this[length] = value;
     *
     * @param value The value to push to the array.
     *
     * @return The receiver.
     */
    public V8Array push(final V8Value value) {
        v8.checkThread();
        checkReleased();
        v8.checkRuntime(value);
        if (value == null) {
            v8.addArrayNullItem(v8.getV8RuntimePtr(), getHandle());
        } else if (value.equals(V8.getUndefined())) {
            v8.addArrayUndefinedItem(v8.getV8RuntimePtr(), getHandle());
        } else {
            v8.addArrayObjectItem(v8.getV8RuntimePtr(), getHandle(), value.getHandle());
        }
        return this;
    }

    /**
     * Pushes a Object to the next available spot in the Array. In
     * particular, this[length] = value;
     *
     * @param value The value to push to the array.
     *
     * @return The receiver.
     */
    public V8Array push(final Object value) {
        v8.checkThread();
        checkReleased();
        if (value instanceof V8Value) {
            v8.checkRuntime((V8Value) value);
        }
        if (value == null) {
            v8.addArrayNullItem(v8.getV8RuntimePtr(), getHandle());
        } else if (value.equals(V8.getUndefined())) {
            v8.addArrayUndefinedItem(v8.getV8RuntimePtr(), getHandle());
        } else {
            if (value instanceof Double) {
                v8.addArrayDoubleItem(v8.getV8RuntimePtr(), getHandle(), (Double) value);
            } else if (value instanceof Integer) {
                v8.addArrayIntItem(v8.getV8RuntimePtr(), getHandle(), (Integer) value);
            } else if (value instanceof Float) {
                v8.addArrayDoubleItem(v8.getV8RuntimePtr(), getHandle(), ((Float) value).doubleValue());
            } else if (value instanceof Number) {
                v8.addArrayDoubleItem(v8.getV8RuntimePtr(), getHandle(), ((Number) value).doubleValue());
            } else if (value instanceof Boolean) {
                v8.addArrayBooleanItem(v8.getV8RuntimePtr(), getHandle(), (Boolean) value);
            } else if (value instanceof String) {
                v8.addArrayStringItem(v8.getV8RuntimePtr(), getHandle(), (String) value);
            } else if (value instanceof V8Value) {
                v8.addArrayObjectItem(v8.getV8RuntimePtr(), getHandle(), ((V8Value) value).getHandle());
            } else {
                throw new IllegalArgumentException();
            }
        }
        return this;
    }

    /**
     * Pushes null to the next available spot in the Array. In
     * particular, this[length] = null;
     *
     * @return The receiver.
     */
    public V8Array pushNull() {
        v8.checkThread();
        checkReleased();
        v8.addArrayNullItem(v8.getV8RuntimePtr(), getHandle());
        return this;
    }

    /**
     * Pushes undefined to the next available spot in the Array. In
     * particular, this[length] = undefined;
     *
     * @return The receiver.
     */
    public V8Array pushUndefined() {
        v8.checkThread();
        checkReleased();
        v8.addArrayUndefinedItem(v8.getV8RuntimePtr(), getHandle());
        return this;
    }

    static class Undefined extends V8Array {

        public Undefined() {
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Value#isUndefined()
         */
        @Override
        public boolean isUndefined() {
            return true;
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Value#isReleased()
         */
        @Override
        public boolean isReleased() {
            return false;
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Value#close()
         */
        @Override
        public void close() {
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Value#release()
         */
        @Override
        @Deprecated
        public void release() {
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#twin()
         */
        @Override
        public Undefined twin() {
            return (Undefined) super.twin();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#toString()
         */
        @Override
        public String toString() {
            return "undefined";
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Value#equals(java.lang.Object)
         */
        @Override
        public boolean equals(final Object that) {
            if ((that instanceof V8Object) && ((V8Object) that).isUndefined()) {
                return true;
            }
            return false;
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Value#hashCode()
         */
        @Override
        public int hashCode() {
            return 919;
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Value#getRuntime()
         */
        @Override
        public V8 getRuntime() {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#add(java.lang.String, boolean)
         */
        @Override
        public V8Object add(final String key, final boolean value) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#add(java.lang.String, double)
         */
        @Override
        public V8Object add(final String key, final double value) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#add(java.lang.String, int)
         */
        @Override
        public V8Object add(final String key, final int value) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#add(java.lang.String, java.lang.String)
         */
        @Override
        public V8Object add(final String key, final String value) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#add(java.lang.String, com.eclipsesource.v8.V8Value)
         */
        @Override
        public V8Object add(final String key, final V8Value value) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#addUndefined(java.lang.String)
         */
        @Override
        public V8Object addUndefined(final String key) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#contains(java.lang.String)
         */
        @Override
        public boolean contains(final String key) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#executeArrayFunction(java.lang.String, com.eclipsesource.v8.V8Array)
         */
        @Override
        public V8Array executeArrayFunction(final String name, final V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#executeBooleanFunction(java.lang.String, com.eclipsesource.v8.V8Array)
         */
        @Override
        public boolean executeBooleanFunction(final String name, final V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#executeDoubleFunction(java.lang.String, com.eclipsesource.v8.V8Array)
         */
        @Override
        public double executeDoubleFunction(final String name, final V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#executeIntegerFunction(java.lang.String, com.eclipsesource.v8.V8Array)
         */
        @Override
        public int executeIntegerFunction(final String name, final V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#executeObjectFunction(java.lang.String, com.eclipsesource.v8.V8Array)
         */
        @Override
        public V8Object executeObjectFunction(final String name, final V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#executeStringFunction(java.lang.String, com.eclipsesource.v8.V8Array)
         */
        @Override
        public String executeStringFunction(final String name, final V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#executeVoidFunction(java.lang.String, com.eclipsesource.v8.V8Array)
         */
        @Override
        public void executeVoidFunction(final String name, final V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#getArray(java.lang.String)
         */
        @Override
        public V8Array getArray(final String key) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#getBoolean(java.lang.String)
         */
        @Override
        public boolean getBoolean(final String key) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#getDouble(java.lang.String)
         */
        @Override
        public double getDouble(final String key) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#getInteger(java.lang.String)
         */
        @Override
        public int getInteger(final String key) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#getKeys()
         */
        @Override
        public String[] getKeys() {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#getObject(java.lang.String)
         */
        @Override
        public V8Object getObject(final String key) throws V8ResultUndefined {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#getString(java.lang.String)
         */
        @Override
        public String getString(final String key) throws V8ResultUndefined {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#getType(java.lang.String)
         */
        @Override
        public int getType(final String key) throws V8ResultUndefined {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#registerJavaMethod(com.eclipsesource.v8.JavaCallback, java.lang.String)
         */
        @Override
        public V8Object registerJavaMethod(final JavaCallback callback, final String jsFunctionName) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#registerJavaMethod(com.eclipsesource.v8.JavaVoidCallback, java.lang.String)
         */
        @Override
        public V8Object registerJavaMethod(final JavaVoidCallback callback, final String jsFunctionName) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#registerJavaMethod(java.lang.Object, java.lang.String, java.lang.String, java.lang.Class[], boolean)
         */
        @Override
        public V8Object registerJavaMethod(final Object object, final String methodName, final String jsFunctionName, final Class<?>[] parameterTypes, final boolean includeReceiver) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Object#setPrototype(com.eclipsesource.v8.V8Object)
         */
        @Override
        public V8Object setPrototype(final V8Object value) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#get(int)
         */
        @Override
        public Object get(final int index) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getArray(int)
         */
        @Override
        public V8Array getArray(final int index) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getBoolean(int)
         */
        @Override
        public boolean getBoolean(final int index) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getBooleans(int, int)
         */
        @Override
        public boolean[] getBooleans(final int index, final int length) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getBytes(int, int)
         */
        @Override
        public byte[] getBytes(final int index, final int length) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getBytes(int, int)
         */
        @Override
        public int getBytes(final int index, final int length, final byte[] resultArray) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getByte(int)
         */
        @Override
        public byte getByte(final int index) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getBooleans(int, int, boolean[])
         */
        @Override
        public int getBooleans(final int index, final int length, final boolean[] resultArray) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getDouble(int)
         */
        @Override
        public double getDouble(final int index) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getDoubles(int, int)
         */
        @Override
        public double[] getDoubles(final int index, final int length) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getDoubles(int, int, double[])
         */
        @Override
        public int getDoubles(final int index, final int length, final double[] resultArray) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getInteger(int)
         */
        @Override
        public int getInteger(final int index) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getIntegers(int, int)
         */
        @Override
        public int[] getIntegers(final int index, final int length) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getIntegers(int, int, int[])
         */
        @Override
        public int getIntegers(final int index, final int length, final int[] resultArray) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getObject(int)
         */
        @Override
        public V8Object getObject(final int index) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getString(int)
         */
        @Override
        public String getString(final int index) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getStrings(int, int)
         */
        @Override
        public String[] getStrings(final int index, final int length) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getStrings(int, int, java.lang.String[])
         */
        @Override
        public int getStrings(final int index, final int length, final String[] resultArray) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getType()
         */
        @Override
        public int getType() {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getType(int)
         */
        @Override
        public int getType(final int index) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#getType(int, int)
         */
        @Override
        public int getType(final int index, final int length) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#length()
         */
        @Override
        public int length() {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#push(boolean)
         */
        @Override
        public V8Array push(final boolean value) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#push(double)
         */
        @Override
        public V8Array push(final double value) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#push(int)
         */
        @Override
        public V8Array push(final int value) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#push(java.lang.String)
         */
        @Override
        public V8Array push(final String value) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#push(com.eclipsesource.v8.V8Value)
         */
        @Override
        public V8Array push(final V8Value value) {
            throw new UnsupportedOperationException();
        }

        /*
         * (non-Javadoc)
         * @see com.eclipsesource.v8.V8Array#pushUndefined()
         */
        @Override
        public V8Array pushUndefined() {
            throw new UnsupportedOperationException();
        }

    }

}
