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
 * An exception that's used to indicate that method that should have returned a
 * primitive, returned an Undefined instead.
 *
 * In Java, Undefined cannot be returned for all methods, especially if
 * the method returns a primitive (int, double, boolean) or a String.
 * In this case, if an Undefined should be returned from JS, then an instance
 * of this exception is thrown.
 */
@SuppressWarnings("serial")
public class V8ResultUndefined extends V8RuntimeException {

    V8ResultUndefined(final String message) {
        super(message);
    }

    V8ResultUndefined() {
        super();
    }
}
