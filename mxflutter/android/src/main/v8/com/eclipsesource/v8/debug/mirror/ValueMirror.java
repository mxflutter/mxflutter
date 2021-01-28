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

import com.eclipsesource.v8.V8Object;

/**
 * Represents 'Value' Mirrors (Objects, Numbers, Strings, ...).
 */
public class ValueMirror extends Mirror {

    private static final String VALUE = "value";

    ValueMirror(final V8Object v8Object) {
        super(v8Object);
    }

    /**
     * Returns the Object that this mirror represents.
     *
     * @return The object that this mirror represents.
     */
    public Object getValue() {
        return v8Object.executeFunction(VALUE, null);
    }

    @Override
    public boolean isValue() {
        return true;
    }

}
