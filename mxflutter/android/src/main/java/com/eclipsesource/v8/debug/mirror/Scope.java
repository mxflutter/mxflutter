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
import com.eclipsesource.v8.V8Value;

/**
 * Represents a JavaScope scope accessible from the current stack frame
 * during debug break.
 *
 */
public class Scope extends Mirror {

    private static final String SCOPE_OBJECT       = "scopeObject";
    private static final String SCOPE_TYPE         = "scopeType";
    private static final String SET_VARIABLE_VALUE = "setVariableValue";

    /**
     * Represents the different types of scopes available.
     */
    public static enum ScopeType {
        Global(0), Local(1), With(2), Closure(3), Catch(4), Block(5), Script(6);
        int index;

        private ScopeType(final int index) {
            this.index = index;
        }
    }

    Scope(final V8Object v8Object) {
        super(v8Object);
    }

    /**
     * Returns the type of this scope.
     *
     * @return The type of scope.
     */
    public ScopeType getType() {
        return ScopeType.values()[v8Object.executeIntegerFunction(SCOPE_TYPE, null)];
    }

    /**
     * Sets the value of a variable in this scope.
     *
     * @param name The name of the variable
     * @param value The value
     */
    public void setVariableValue(final String name, final int value) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(name);
        parameters.push(value);
        try {
            v8Object.executeVoidFunction(SET_VARIABLE_VALUE, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Sets the value of a variable in this scope.
     *
     * @param name The name of the variable
     * @param value The value
     */
    public void setVariableValue(final String name, final V8Value value) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(name);
        parameters.push(value);
        try {
            v8Object.executeVoidFunction(SET_VARIABLE_VALUE, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Sets the value of a variable in this scope.
     *
     * @param name The name of the variable
     * @param value The value
     */
    public void setVariableValue(final String name, final boolean value) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(name);
        parameters.push(value);
        try {
            v8Object.executeVoidFunction(SET_VARIABLE_VALUE, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Sets the value of a variable in this scope.
     *
     * @param name The name of the variable
     * @param value The value
     */
    public void setVariableValue(final String name, final String value) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(name);
        parameters.push(value);
        try {
            v8Object.executeVoidFunction(SET_VARIABLE_VALUE, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Sets the value of a variable in this scope.
     *
     * @param name The name of the variable
     * @param value The value
     */
    public void setVariableValue(final String name, final double value) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(name);
        parameters.push(value);
        try {
            v8Object.executeVoidFunction(SET_VARIABLE_VALUE, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Returns the underlying V8Object that represents this scope.
     *
     * @return The underlying V8Object that represents this scope.
     */
    public ObjectMirror getScopeObject() {
        V8Object mirror = null;
        try {
            mirror = v8Object.executeObjectFunction(SCOPE_OBJECT, null);
            return (ObjectMirror) createMirror(mirror);
        } finally {
            if ( mirror != null ) {
                mirror.close();
            }
        }

    }

}