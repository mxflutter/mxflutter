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
 * Represents JavaScript 'Function' Mirrors
 */
public class FunctionMirror extends ObjectMirror {

    private static final String NAME   = "name";
    private static final String SCRIPT = "script";

    FunctionMirror(final V8Object v8Object) {
        super(v8Object);
    }

    /**
     * Returns the name of this Function.
     *
     * @return The name of this function
     */
    public String getName() {
        return v8Object.executeStringFunction(NAME, null);
    }

    /**
     * Returns the name of the Script associated with
     * this FunctionMirror.
     *
     * @return The name of the script.
     */
    public String getScriptName() {
        V8Object script = v8Object.executeObjectFunction(SCRIPT, null);
        try {
            return script.executeStringFunction(NAME, null);
        } finally {
            script.close();
        }
    }

    @Override
    public boolean isFunction() {
        return true;
    }

}
