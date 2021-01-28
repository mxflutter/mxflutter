/*******************************************************************************
 * Copyright (c) 2017 EclipseSource and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    EclipseSource - initial API and implementation
 ******************************************************************************/
package com.eclipsesource.v8.utils;

/**
 * An interface which allows a plug-able conversion from V8Value types to Java objects.
 * The TypeAdapter can be used with the V8ObjectUtils to allow users to customize
 * the conversion.
 */
public interface TypeAdapter {

    /**
     * A default adapter that if returned in {@link TypeAdapter#adapt(int, Object)}, will result
     * in the default type adaption.
     */
    public static final Object DEFAULT = new Object();

    /**
     * Adapt an object from V8 to Java.
     *
     * If the value is a V8Value (V8Object) then it will be released after
     * this method is called. If you wish to retain the object, call
     * ((V8Value)value).twin();
     *
     * @param type The Type of the object to be adapted.
     * @param value The V8 Object to be converted.
     * @return The adapted Java Object or {@link TypeAdapter#DEFAULT} for the default conversion.
     */
    public Object adapt(int type, Object value);

}
