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
package com.eclipsesource.v8.debug.mirror;

import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Object;

/**
 * Represents 'Object' mirrors.
 */
public class ObjectMirror extends ValueMirror {

    private static final String PROPERTIES     = "properties";
    private static final String PROPERTY_NAMES = "propertyNames";

    public enum PropertyKind {
        Named(1), Indexed(2);
        int index;

        private PropertyKind(final int index) {
            this.index = index;
        }
    }

    @Override
    public String toString() {
        return v8Object.toString();
    }

    ObjectMirror(final V8Object v8Object) {
        super(v8Object);
    }

    @Override
    public boolean isObject() {
        return true;
    }

    /**
     * Returns all the property names for the given object.
     *
     * @param kind Indicate whether named, indexed or both kinds of properties are requested.
     * @param limit Limit the number of properties returned to the specified value
     * @return All the property names for a given object
     */
    public String[] getPropertyNames(final PropertyKind kind, final int limit) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(kind.index);
        parameters.push(limit);
        V8Array propertyNames = null;
        try {
            propertyNames = v8Object.executeArrayFunction(PROPERTY_NAMES, parameters);
            String[] result = new String[propertyNames.length()];
            for (int i = 0; i < result.length; i++) {
                result[i] = propertyNames.getString(i);
            }
            return result;
        } finally {
            parameters.close();
            if (propertyNames != null) {
                propertyNames.close();
            }
        }
    }

    /**
     * Return the properties for this object as an array of PropertyMirror objects.
     *
     * @param kind Indicate whether named, indexed or both kinds of properties are requested
     * @param limit Limit the number of properties returned to the specified value
     * @return {Array} Property mirrors for this object
     */
    public PropertiesArray getProperties(final PropertyKind kind, final int limit) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(kind.index);
        parameters.push(limit);
        V8Array result = null;
        try {
            result = v8Object.executeArrayFunction(PROPERTIES, parameters);
            return new PropertiesArray(result);
        } finally {
            parameters.close();
            if ((result != null) && !result.isReleased()) {
                result.close();
                result = null;
            }
        }
    }

}
