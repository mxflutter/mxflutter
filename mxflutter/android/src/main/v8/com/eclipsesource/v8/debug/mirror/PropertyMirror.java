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
 * Represents JavaScript 'Property' Mirrors
 */
public class PropertyMirror extends Mirror {

    PropertyMirror(final V8Object v8Object) {
        super(v8Object);
    }

    /**
     * Returns the name of this property.
     *
     * @return The name of this property.
     */
    public String getName() {
        return v8Object.executeStringFunction("name", null);
    }

    /**
     * Returns the value of this property.
     *
     * @return The value of this property.
     */
    public Mirror getValue() {
        V8Object mirror = v8Object.executeObjectFunction("value", null);
        try {
            return createMirror(mirror);
        } finally {
            mirror.close();
        }
    }

    @Override
    public boolean isProperty() {
        return true;
    }

}
