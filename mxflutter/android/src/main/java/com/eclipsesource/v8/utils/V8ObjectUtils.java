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
package com.eclipsesource.v8.utils;

import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8ArrayBuffer;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8TypedArray;
import com.eclipsesource.v8.V8Value;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/**
 * A set of static helper methods to convert V8Objects / V8Arrays to
 * java.util Maps and Lists and back again. These conversions
 * perform a deep copy.
 */
public class V8ObjectUtils {

    private static final Object IGNORE               = new Object();
    private static final TypeAdapter DEFAULT_TYPE_ADAPTER = new DefaultTypeAdapter();

    /**
     * Create a Java Object from a result from V8. V8 can return
     * basic Java types, or V8Values (V8Object, V8Array, etc...). This method
     * will attempt to convert the result into a pure Java object using a
     * deep copy.
     *
     * If the input is basic Java type (Integer, Double, Boolean, String)
     * it will be returned. If the input is a V8Value, it will be converted.
     *
     * All elements in the V8Object are released after they are accessed.
     * However, the root object itself is not released.
     *
     * @param v8Object The input to convert.
     * @return A Java object representing the input.
     */
    public static Object getValue(final Object v8Object) {
        return getValue(v8Object, DEFAULT_TYPE_ADAPTER);
    }

    /**
     * Create a Java Object from a result from V8 using a {@link TypeAdapter} to convert
     * objects. V8 can return basic Java types or V8Values (V8Object, V8Array, etc...). This
     * method will attempt to convert the result into a pure Java object using
     * a deep copy.
     *
     * If the input is basic Java type (Integer, Double, Boolean, String)
     * it will be returned. If the input is a V8Value, it will be converted.
     *
     * All elements in the V8Object are released after they are accessed.
     * However, the root object itself is not released.
     *
     * @param v8Object The input to convert.
     * @param adapter The {@link TypeAdapter} to use for the object conversions.
     * @return A Java object representing the input.
     */
    public static Object getValue(final Object v8Object, final TypeAdapter adapter) {
        V8Map<Object> cache = new V8Map<Object>();
        try {
            if (v8Object instanceof V8Value) {
                int type = ((V8Value) v8Object).getV8Type();
                return getValue(v8Object, type, cache, adapter);
            } else {
                return v8Object;
            }
        } finally {
            cache.close();
        }
    }

    /**
     * Creates a Map from a V8Object using a deep copy. All elements
     * in the V8Object are released after they are accessed. However, the root
     * object itself is not released.
     *
     * @param object The root of the V8Object graph.
     *
     * @return A map representing a deep copy of the V8Object rooted at 'object'.
     */
    public static Map<String, ? super Object> toMap(final V8Object object) {
        return toMap(object, DEFAULT_TYPE_ADAPTER);
    }

    /**
     * Creates a Map from a V8Object using a deep copy and a TypeAdapter to handle
     * type conversions. All elements in the V8Object are released after they are accessed.
     * However, the root object itself is not released.
     *
     * @param object The root of the V8Object graph.
     * @param adapter The {@link TypeAdapter} to use for the object conversions.
     *
     * @return A map representing a deep copy of the V8Object rooted at 'object'.
     */
    public static Map<String, ? super Object> toMap(final V8Object object, final TypeAdapter adapter) {
        V8Map<Object> cache = new V8Map<Object>();
        try {
            return toMap(object, cache, adapter);
        } finally {
            cache.close();
        }
    }

    /**
     * Creates a List from a V8Array using a deep copy. All elements
     * in the V8Array are released after they are accessed. However, the root
     * array itself is not released.
     *
     * @param array The root of the V8Array graph.
     *
     * @return A list representing a deep copy of the V8Array rooted at 'array'.
     */
    public static List<? super Object> toList(final V8Array array) {
        return toList(array, DEFAULT_TYPE_ADAPTER);
    }

    /**
     * Creates a List from a V8Array using a deep copy and a TypeAdapter to handle
     * type conversions. All elements in the V8Array are released after they are accessed.
     * However, the root array itself is not released.
     *
     * @param array The root of the V8Array graph.
     * @param adapter The {@link TypeAdapter} to use for the object conversions.
     *
     * @return A list representing a deep copy of the V8Array rooted at 'array'.
     */
    public static List<? super Object> toList(final V8Array array, final TypeAdapter adapter) {
        V8Map<Object> cache = new V8Map<Object>();
        try {
            return toList(array, cache, adapter);
        } finally {
            cache.close();
        }
    }

    /**
     * Populates a Java array from a V8Array. The type of the array must be specified.
     * Currently, only INTEGER, DOUBLE, BOOLEAN and STRING are supported.
     * The V8Array must only contain elements of type 'arrayType'. The result
     * can be optionally passed in as a parameter.
     *
     * This method will use J2V8's bulk array copy making it faster than iterating over
     * all the elements in the array.
     *
     * @param array The V8Array to convert to a Java Array.
     * @param arrayType The type of the V8Array to convert.
     * @param result The array to use as the result. If null, a new array will be created.
     *
     * @return A Java array representing a V8Array.
     */
    public static Object getTypedArray(final V8Array array, final int arrayType, final Object result) {
        int length = array.length();
        if (arrayType == V8Value.INTEGER) {
            int[] intArray = (int[]) result;
            if ((intArray == null) || (intArray.length < length)) {
                intArray = new int[length];
            }
            array.getIntegers(0, length, intArray);
            return intArray;
        } else if (arrayType == V8Value.DOUBLE) {
            double[] doubleArray = (double[]) result;
            if ((doubleArray == null) || (doubleArray.length < length)) {
                doubleArray = new double[length];
            }
            array.getDoubles(0, length, doubleArray);
            return doubleArray;
        } else if (arrayType == V8Value.BOOLEAN) {
            boolean[] booleanArray = (boolean[]) result;
            if ((booleanArray == null) || (booleanArray.length < length)) {
                booleanArray = new boolean[length];
            }
            array.getBooleans(0, length, booleanArray);
            return booleanArray;
        } else if (arrayType == V8Value.STRING) {
            String[] stringArray = (String[]) result;
            if ((stringArray == null) || (stringArray.length < length)) {
                stringArray = new String[length];
            }
            array.getStrings(0, length, stringArray);
            return stringArray;
        } else if (arrayType == V8Value.BYTE) {
            byte[] byteArray = (byte[]) result;
            if ((byteArray == null) || (byteArray.length < length)) {
                byteArray = new byte[length];
            }
            array.getBytes(0, length, byteArray);
            return byteArray;
        }
        throw new RuntimeException("Unsupported bulk load type: " + arrayType);
    }

    /**
     * Creates a Java array from a V8Array. The type of the Array must be specified.
     * Currently, only INTEGER, DOUBLE, BOOLEAN and STRING are supported.
     * The V8Array must only contain elements of type 'arrayType'.
     *
     * This method will use J2V8's bulk array copy making it faster than iterating over
     * all the elements in the array.
     *
     * @param array The V8Array to convert to a Java Array.
     * @param arrayType The type of the V8Array to convert.
     *
     * @return A Java array representing a V8Array.
     */
    public static Object getTypedArray(final V8Array array, final int arrayType) {
        int length = array.length();
        if (arrayType == V8Value.INTEGER) {
            return array.getIntegers(0, length);
        } else if (arrayType == V8Value.DOUBLE) {
            return array.getDoubles(0, length);
        } else if (arrayType == V8Value.BOOLEAN) {
            return array.getBooleans(0, length);
        } else if (arrayType == V8Value.STRING) {
            return array.getStrings(0, length);
        }
        throw new RuntimeException("Unsupported bulk load type: " + arrayType);
    }

    /**
     * Creates a V8Object from a java.util.Map. This is a deep copy, so if the map
     * contains other maps (or lists) they will also be converted.
     *
     * @param v8 The runtime on which to create the result.
     * @param map The map to convert to a V8Object.
     *
     * @return A V8Object representing the map.
     */
    public static V8Object toV8Object(final V8 v8, final Map<String, ? extends Object> map) {
        Map<Object, V8Value> cache = new Hashtable<Object, V8Value>();
        try {
            return toV8Object(v8, map, cache).twin();
        } finally {
            for (V8Value v8Object : cache.values()) {
                v8Object.close();
            }
        }
    }

    /**
     * Creates a V8Array from a java.util.List. This is a deep copy, so if the list
     * contains other lists (or maps) they will also be converted.
     *
     * @param v8 The runtime on which to create the result.
     * @param list The list to convert to a V8Array.
     *
     * @return A V8Array representing the list.
     */
    public static V8Array toV8Array(final V8 v8, final List<? extends Object> list) {
        Map<Object, V8Value> cache = new Hashtable<Object, V8Value>();
        try {
            return toV8Array(v8, list, cache).twin();
        } finally {
            for (V8Value v8Object : cache.values()) {
                v8Object.close();
            }
        }
    }

    /**
     * Returns an object usable with a V8 Runtime which represents
     * the parameter 'value'. If 'value' is an Integer, Boolean, Double
     * or String, then 'value' is simply returned as these are directly
     * usable on V8. If 'value' is a map / list, then it's converted to
     * a V8Object / V8Array first.
     *
     * If the result is a V8Value, it must be released.
     *
     * @param v8 The runtime on which to create V8Values.
     * @param value The value to convert to an object usable with V8
     *
     * @return An object which can be used directly with a V8 runtime.
     */
    public static Object getV8Result(final V8 v8, final Object value) {
        if (value == null) {
            return null;
        }
        Map<Object, V8Value> cache = new Hashtable<Object, V8Value>();
        try {
            Object result = getV8Result(v8, value, cache);
            if (result instanceof V8Value) {
                return ((V8Value) result).twin();
            }
            return result;
        } finally {
            for (V8Value v8Object : cache.values()) {
                v8Object.close();
            }
        }
    }

    /**
     * Pushes a Java Object to a V8Array by first converting it to a V8Value if needed.
     * If the value is a boxed primitive, then the primitive will be pushed. If the object
     * is a Map / List then a deep copy will be performed, converting the object to a
     * V8Object / V8Array first.
     *
     * @param v8 The runtime on which to create any needed V8Values.
     * @param array The array to push the elements to.
     * @param value The value to push to the array.
     */
    public static void pushValue(final V8 v8, final V8Array array, final Object value) {
        Map<Object, V8Value> cache = new Hashtable<Object, V8Value>();
        try {
            pushValue(v8, array, value, cache);
        } finally {
            for (V8Value v8Object : cache.values()) {
                v8Object.close();
            }
        }
    }

    /**
     * Gets a Java Object representing the value at the given index in the V8Array.
     * If the value is a primitive (int, boolean or double) then a boxed instance
     * is returned. If the value is a String, then a String is returned. If
     * the value is a V8Object or V8Array, then a Map or List is returned.
     *
     * @param array The array on which to lookup the value. The array is not
     *              released.
     * @param index The index whose element to lookup.
     *
     * @return A Java Object representing the value at a given index.
     */
    public static Object getValue(final V8Array array, final int index) {
        V8Map<Object> cache = new V8Map<Object>();
        Object object = null;
        int type = V8Value.UNDEFINED;
        try {
            object = array.get(index);
            type = array.getType(index);
            Object result = getValue(object, type, cache, DEFAULT_TYPE_ADAPTER);
            if ((result == object) && (result instanceof V8Value)) {
                return ((V8Value) result).twin();
            }
            return result;
        } finally {
            if (object instanceof Releasable) {
                ((Releasable) object).release();
            }
            cache.close();
        }
    }

    /**
     * Gets a Java Object representing the value at the given index in the V8Array.
     * A TypeAdapter is used to convert values from V8Objects to Java Objects.
     * If the value is a primitive (int, boolean or double) then a boxed instance
     * is returned. If the value is a String, then a String is returned. If
     * the value is a V8Object or V8Array, then a Map or List is returned.
     *
     * @param array The array on which to lookup the value. The array is not
     *              released.
     * @param index The index whose element to lookup.
     * @param adapter The {@link TypeAdapter} to use for the object conversions.
     *
     * @return A Java Object representing the value at a given index.
     */
    public static Object getValue(final V8Array array, final int index, final TypeAdapter adapter) {
        V8Map<Object> cache = new V8Map<Object>();
        Object object = null;
        int type = V8Value.UNDEFINED;
        try {
            object = array.get(index);
            type = array.getType(index);
            Object result = getValue(object, type, cache, adapter);
            if ((result == object) && (result instanceof V8Value)) {
                return ((V8Value) result).twin();
            }
            return result;
        } finally {
            if (object instanceof Releasable) {
                ((Releasable) object).release();
            }
            cache.close();
        }
    }

    /**
     * Gets a Java Object representing the value with the given key in the V8Object.
     * If the value is a primitive (int, boolean or double) then a boxed instance
     * is returned. If the value is a String, then a String is returned. If
     * the value is a V8Object or V8Array, then a Map or List is returned.
     *
     * @param object The object on which to lookup the value. The object is not
     *               released.
     * @param key The key to use to lookup the value.
     *
     * @return A Java Object representing the value at a given key.
     */
    public static Object getValue(final V8Object object, final String key) {
        return getValue(object, key, DEFAULT_TYPE_ADAPTER);
    }

    /**
     * Gets a Java Object representing the value with the given key in the V8Object.
     * A TypeAdapter is used to convert values from V8Objects to Java Objects.
     * If the value is a primitive (int, boolean or double) then a boxed instance
     * is returned. If the value is a String, then a String is returned. If
     * the value is a V8Object or V8Array, then a Map or List is returned.
     *
     * @param v8Object The object on which to lookup the value. The object is not
     *               released.
     * @param key The key to use to lookup the value.
     * @param adapter The {@link TypeAdapter} to use for the object conversions.
     *
     * @return A Java Object representing the value at a given key.
     */
    public static Object getValue(final V8Object v8Object, final String key, final TypeAdapter adapter) {
        V8Map<Object> cache = new V8Map<Object>();
        Object object = null;
        int type = V8Value.UNDEFINED;
        try {
            object = v8Object.get(key);
            type = v8Object.getType(key);
            Object result = getValue(object, type, cache, adapter);
            if ((result == object) && (result instanceof V8Value)) {
                return ((V8Value) result).twin();
            }
            return result;
        } finally {
            if (object instanceof Releasable) {
                ((Releasable) object).release();
            }
            cache.close();
        }
    }

    @SuppressWarnings("unchecked")
    private static Map<String, ? super Object> toMap(final V8Object v8Object, final V8Map<Object> cache, final TypeAdapter adapter) {
        if (v8Object == null) {
            return Collections.emptyMap();
        }
        if (cache.containsKey(v8Object)) {
            return (Map<String, ? super Object>) cache.get(v8Object);
        }
        Map<String, ? super Object> result = new V8PropertyMap<Object>();
        cache.put(v8Object, result);
        String[] keys = v8Object.getKeys();
        for (String key : keys) {
            Object object = null;
            int type = V8Value.UNDEFINED;
            try {
                object = v8Object.get(key);
                type = v8Object.getType(key);
                Object value = getValue(object, type, cache, adapter);
                if (value != IGNORE) {
                    result.put(key, value);
                }
            } finally {
                if (object instanceof Releasable) {
                    ((Releasable) object).release();
                }
            }
        }
        return result;
    }

    @SuppressWarnings("unchecked")
    private static List<? super Object> toList(final V8Array array, final V8Map<Object> cache, final TypeAdapter adapter) {
        if (array == null) {
            return Collections.emptyList();
        }
        if (cache.containsKey(array)) {
            return (List<? super Object>) cache.get(array);
        }
        List<? super Object> result = new ArrayList<Object>();
        cache.put(array, result);
        for (int i = 0; i < array.length(); i++) {
            Object object = null;
            int type = V8Value.UNDEFINED;
            try {
                object = array.get(i);
                type = array.getType(i);
                Object value = getValue(object, type, cache, adapter);
                if (value != IGNORE) {
                    result.add(value);
                }
            } finally {
                if (object instanceof Releasable) {
                    ((Releasable) object).release();
                }
            }
        }
        return result;
    }

    private static V8TypedArray toV8TypedArray(final V8 v8, final TypedArray typeArray, final Map<Object, V8Value> cache) {
        if (cache.containsKey(typeArray)) {
            return (V8TypedArray) cache.get(typeArray);
        }
        V8TypedArray result = typeArray.getV8TypedArray();
        cache.put(typeArray, result);
        return result;
    }

    private static V8ArrayBuffer toV8ArrayBuffer(final V8 v8, final ArrayBuffer arrayBuffer, final Map<Object, V8Value> cache) {
        if (cache.containsKey(arrayBuffer)) {
            return (V8ArrayBuffer) cache.get(arrayBuffer);
        }
        V8ArrayBuffer result = arrayBuffer.getV8ArrayBuffer();
        cache.put(arrayBuffer, result);
        return result;
    }

    private static V8Object toV8Object(final V8 v8, final Map<String, ? extends Object> map, final Map<Object, V8Value> cache) {
        if (cache.containsKey(map)) {
            return (V8Object) cache.get(map);
        }
        V8Object result = new V8Object(v8);
        cache.put(map, result);
        try {
            for (Entry<String, ? extends Object> entry : map.entrySet()) {
                setValue(v8, result, entry.getKey(), entry.getValue(), cache);
            }
        } catch (IllegalStateException e) {
            result.close();
            throw e;
        }
        return result;
    }

    private static V8Array toV8Array(final V8 v8, final List<? extends Object> list, final Map<Object, V8Value> cache) {
        if (cache.containsKey(new ListWrapper(list))) {
            return (V8Array) cache.get(new ListWrapper(list));
        }
        V8Array result = new V8Array(v8);
        cache.put(new ListWrapper(list), result);
        try {
            for (int i = 0; i < list.size(); i++) {
                Object value = list.get(i);
                pushValue(v8, result, value, cache);
            }
        } catch (IllegalStateException e) {
            result.close();
            throw e;
        }
        return result;
    }

    @SuppressWarnings("unchecked")
    private static Object getV8Result(final V8 v8, final Object value, final Map<Object, V8Value> cache) {
        if (cache.containsKey(value)) {
            return cache.get(value);
        }
        if (value instanceof Map<?, ?>) {
            return toV8Object(v8, (Map<String, ? extends Object>) value, cache);
        } else if (value instanceof List<?>) {
            return toV8Array(v8, (List<? extends Object>) value, cache);
        } else if (value instanceof TypedArray) {
            return toV8TypedArray(v8, (TypedArray) value, cache);
        } else if (value instanceof ArrayBuffer) {
            return toV8ArrayBuffer(v8, (ArrayBuffer) value, cache);
        }
        return value;
    }

    @SuppressWarnings({ "unchecked", "rawtypes", "resource" })
    private static void pushValue(final V8 v8, final V8Array result, final Object value, final Map<Object, V8Value> cache) {
        if (value == null) {
            result.pushUndefined();
        } else if (value instanceof Integer) {
            result.push(value);
        } else if (value instanceof Long) {
            result.push(new Double((Long) value));
        } else if (value instanceof Double) {
            result.push(value);
        } else if (value instanceof Float) {
            result.push(value);
        } else if (value instanceof String) {
            result.push((String) value);
        } else if (value instanceof Boolean) {
            result.push(value);
        } else if (value instanceof TypedArray) {
            V8TypedArray v8TypedArray = toV8TypedArray(v8, (TypedArray) value, cache);
            result.push(v8TypedArray);
        } else if (value instanceof ArrayBuffer) {
            V8ArrayBuffer v8ArrayBuffer = toV8ArrayBuffer(v8, (ArrayBuffer) value, cache);
            result.push(v8ArrayBuffer);
        } else if (value instanceof V8Value) {
            result.push((V8Value) value);
        } else if (value instanceof Map) {
            V8Object object = toV8Object(v8, (Map) value, cache);
            result.push(object);
        } else if (value instanceof List) {
            V8Array array = toV8Array(v8, (List) value, cache);
            result.push(array);
        } else {
            throw new IllegalStateException("Unsupported Object of type: " + value.getClass());
        }
    }

    @SuppressWarnings({ "unchecked", "rawtypes", "resource" })
    private static void setValue(final V8 v8, final V8Object result, final String key, final Object value, final Map<Object, V8Value> cache) {
        if (value == null) {
            result.addUndefined(key);
        } else if (value instanceof Integer) {
            result.add(key, (Integer) value);
        } else if (value instanceof Long) {
            result.add(key, (Long) value);
        } else if (value instanceof Double) {
            result.add(key, (Double) value);
        } else if (value instanceof Float) {
            result.add(key, (Float) value);
        } else if (value instanceof String) {
            result.add(key, (String) value);
        } else if (value instanceof Boolean) {
            result.add(key, (Boolean) value);
        } else if (value instanceof TypedArray) {
            V8TypedArray v8TypedArray = toV8TypedArray(v8, (TypedArray) value, cache);
            result.add(key, v8TypedArray);
        } else if (value instanceof ArrayBuffer) {
            V8ArrayBuffer v8ArrayBuffer = toV8ArrayBuffer(v8, (ArrayBuffer) value, cache);
            result.add(key, v8ArrayBuffer);
        } else if (value instanceof V8Value) {
            result.add(key, (V8Value) value);
        } else if (value instanceof Map) {
            V8Object object = toV8Object(v8, (Map) value, cache);
            result.add(key, object);
        } else if (value instanceof List) {
            V8Array array = toV8Array(v8, (List) value, cache);
            result.add(key, array);
        } else {
            throw new IllegalStateException("Unsupported Object of type: " + value.getClass());
        }
    }

    private static Object getValue(final Object value, final int valueType, final V8Map<Object> cache, final TypeAdapter adapter) {
        Object adapterResult = adapter.adapt(valueType, value);
        if (TypeAdapter.DEFAULT != adapterResult) {
            return adapterResult;
        }
        switch (valueType) {
            case V8Value.INTEGER:
            case V8Value.DOUBLE:
            case V8Value.BOOLEAN:
            case V8Value.STRING:
                return value;
            case V8Value.V8_FUNCTION:
                return IGNORE;
            case V8Value.V8_ARRAY_BUFFER:
                return new ArrayBuffer((V8ArrayBuffer) value);
            case V8Value.V8_TYPED_ARRAY:
                return new TypedArray((V8TypedArray) value);
            case V8Value.V8_ARRAY:
                return toList((V8Array) value, cache, adapter);
            case V8Value.V8_OBJECT:
                return toMap((V8Object) value, cache, adapter);
            case V8Value.NULL:
                return null;
            case V8Value.UNDEFINED:
                return V8.getUndefined();
            default:
                throw new IllegalStateException("Cannot convert type " + V8Value.getStringRepresentation(valueType));
        }
    }

    private V8ObjectUtils() {

    }

    static class DefaultTypeAdapter implements TypeAdapter {
        @Override
        public Object adapt(final int type, final Object value) {
            return TypeAdapter.DEFAULT;
        }
    }

    static class ListWrapper {
        private List<? extends Object> list;

        public ListWrapper(final List<? extends Object> list) {
            this.list = list;
        }

        @Override
        public boolean equals(final Object obj) {
            if (obj instanceof ListWrapper) {
                return ((ListWrapper) obj).list == list;
            }
            return false;
        }

        @Override
        public int hashCode() {
            return System.identityHashCode(list);
        }
    }
}
