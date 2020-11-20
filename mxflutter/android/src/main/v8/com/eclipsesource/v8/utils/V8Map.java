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

import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8Value;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * A Map that maps V8Values to arbitrary Java Objects.
 * Once stored in the map, the keys (V8Values) can be released
 * as the map will handle their resource management for you.
 *
 * Once the map is no longer needed, it should be released. To
 * tie a map to the lifecycle of a V8 runtime, it can be registered
 * as a resource with V8.registerResource.
 */
public class V8Map<V> implements Map<V8Value, V>, Releasable {

    private Map<V8Value, V> map;
    private Map<V8Value, V8Value> twinMap;

    /**
     * Creates a V8Map.
     */
    public V8Map() {
        map = new HashMap<V8Value, V>();
        twinMap = new HashMap<V8Value, V8Value>();
    }

    /*
     * (non-Javadoc)
     * @see java.io.Closeable#close()
     */
    @Override
    public void close() {
        this.clear();
    }

    /**
     * Releases all the resources associated with this map. A
     * map can be used again once it's released, although
     * if it's used again it should be released again.
     */
    @Override
    @Deprecated
    public void release() {
        close();
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#size()
     */
    @Override
    public int size() {
        return map.size();
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#isEmpty()
     */
    @Override
    public boolean isEmpty() {
        return map.isEmpty();
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#containsKey(java.lang.Object)
     */
    @Override
    public boolean containsKey(final Object key) {
        return map.containsKey(key);
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#containsValue(java.lang.Object)
     */
    @Override
    public boolean containsValue(final Object value) {
        return map.containsValue(value);
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#get(java.lang.Object)
     */
    @Override
    public V get(final Object key) {
        return map.get(key);
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#put(java.lang.Object, java.lang.Object)
     */
    @Override
    public V put(final V8Value key, final V value) {
        this.remove(key);
        V8Value twin = key.twin();
        twinMap.put(twin, twin);
        return map.put(twin, value);
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#remove(java.lang.Object)
     */
    @Override
    public V remove(final Object key) {
        V result = map.remove(key);
        V8Value twin = twinMap.remove(key);
        if (twin != null) {
            twin.close();
        }
        return result;
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#putAll(java.util.Map)
     */
    @Override
    public void putAll(final Map<? extends V8Value, ? extends V> m) {
        for (Entry<? extends V8Value, ? extends V> entry : m.entrySet()) {
            this.put(entry.getKey(), entry.getValue());
        }
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#clear()
     */
    @Override
    public void clear() {
        map.clear();
        for (V8Value V8Value : twinMap.keySet()) {
            V8Value.close();
        }
        twinMap.clear();
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#keySet()
     */
    @Override
    public Set<V8Value> keySet() {
        return map.keySet();
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#values()
     */
    @Override
    public Collection<V> values() {
        return map.values();
    }

    /*
     * (non-Javadoc)
     * @see java.util.Map#entrySet()
     */
    @Override
    public Set<Entry<V8Value, V>> entrySet() {
        return map.entrySet();
    }

}
