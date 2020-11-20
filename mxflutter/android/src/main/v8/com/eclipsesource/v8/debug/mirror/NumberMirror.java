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
 * Represents JavaScript 'Number' Mirrors
 */
public class NumberMirror extends ValueMirror {

    NumberMirror(final V8Object v8Object) {
        super(v8Object);
    }

    @Override
    public boolean isNumber() {
        return true;
    }

    @Override
    public String toString() {
        return v8Object.executeStringFunction("toText", null);
    }

}
