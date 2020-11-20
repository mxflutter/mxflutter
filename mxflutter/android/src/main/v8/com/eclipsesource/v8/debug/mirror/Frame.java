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
 * Represents a single stack frame accessible from the
 * current execution state.
 */
public class Frame extends Mirror {

    private static final String SOURCE_TEXT     = "sourceText";
    private static final String FUNC            = "func";
    private static final String COLUMN          = "column";
    private static final String LINE            = "line";
    private static final String POSITION        = "position";
    private static final String NAME            = "name";
    private static final String SCRIPT          = "script";
    private static final String SCOPE           = "scope";
    private static final String ARGUMENT_VALUE  = "argumentValue";
    private static final String ARGUMENT_NAME   = "argumentName";
    private static final String LOCAL_COUNT     = "localCount";
    private static final String ARGUMENT_COUNT  = "argumentCount";
    private static final String SCOPE_COUNT     = "scopeCount";
    private static final String LOCAL_NAME      = "localName";
    private static final String LOCAL_VALUE     = "localValue";
    private static final String SOURCE_LOCATION = "sourceLocation";

    public Frame(final V8Object v8Object) {
        super(v8Object);
    }

    /**
     * Returns the number of accessible scopes from this stack frame.
     *
     * @return The number of accessible scopes
     */
    public int getScopeCount() {
        return v8Object.executeIntegerFunction(SCOPE_COUNT, null);
    }

    /**
     * Returns the SourceLocation of this Frame.
     *
     * @return The SourceLocation of this Frame.
     */
    public SourceLocation getSourceLocation() {
        V8Object sourceLocation = v8Object.executeObjectFunction(SOURCE_LOCATION, null);
        FunctionMirror function = getFunction();
        String functionScriptName = function.getScriptName();
        try {
            String scriptName = null;
            V8Object scriptObject = (V8Object) sourceLocation.get(SCRIPT);
            if (scriptObject != null) {
                scriptName = scriptObject.getString(NAME);
                scriptObject.close();
            }
            if ((scriptName == null) && (functionScriptName != null)) {
                scriptName = functionScriptName;
            } else {
                scriptName = "undefined";
            }
            return new SourceLocation(scriptName,
                    sourceLocation.getInteger(POSITION),
                    sourceLocation.getInteger(LINE),
                    sourceLocation.getInteger(COLUMN),
                    sourceLocation.getString(SOURCE_TEXT));
        } finally {
            function.close();
            sourceLocation.close();
        }
    }

    /**
     * Returns the number of arguments to this frame.
     *
     * @return The number of arguments passed to this frame.
     */
    public int getArgumentCount() {
        return v8Object.executeIntegerFunction(ARGUMENT_COUNT, null);
    }

    /**
     * Returns the name of the argument at the given index.
     *
     * @param index The index of the argument name to return.
     * @return The name of argument at the given index.
     */
    public String getArgumentName(final int index) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(index);
        try {
            return v8Object.executeStringFunction(ARGUMENT_NAME, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Returns the value of the argument at the given index.
     *
     * @param index The index of the argument value to return.
     * @return The value of argument at the given index.
     */
    public ValueMirror getArgumentValue(final int index) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(index);
        V8Object result = null;
        try {
            result = v8Object.executeObjectFunction(ARGUMENT_VALUE, parameters);
            if (!isValue(result)) {
                throw new IllegalStateException("Argument value is not a ValueMirror");
            }
            return new ValueMirror(result);
        } finally {
            parameters.close();
            if (result != null) {
                result.close();
            }
        }
    }

    /**
     * Returns the value of the local variable at the given index.
     *
     * @param index The index of the local to return.
     * @return The value of local at the given index.
     */
    public ValueMirror getLocalValue(final int index) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(index);
        V8Object result = null;
        try {
            result = v8Object.executeObjectFunction(LOCAL_VALUE, parameters);
            if (!isValue(result)) {
                throw new IllegalStateException("Local value is not a ValueMirror");
            }
            return createMirror(result);
        } finally {
            parameters.close();
            if (result != null) {
                result.close();
            }
        }
    }

    /**
     * Returns the number of local variables in this frame.
     *
     * @return The number of local variables accessible from this stack frame.
     */
    public int getLocalCount() {
        return v8Object.executeIntegerFunction(LOCAL_COUNT, null);
    }

    /**
     * Returns the name of the local variable at the given index.
     *
     * @param index The index of the local variable name to return.
     * @return The name of local variable at the given index.
     */
    public String getLocalName(final int index) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(index);
        try {
            return v8Object.executeStringFunction(LOCAL_NAME, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Returns the scope at a given index.
     *
     * @param index The index
     * @return The scope
     */
    public Scope getScope(final int index) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(index);
        V8Object scope = null;
        try {
            scope = v8Object.executeObjectFunction(SCOPE, parameters);
            return new Scope(scope);
        } finally {
            parameters.close();
            if (scope != null) {
                scope.close();
            }
        }
    }

    /**
     * Returns the Function associated with this particular debug frame.
     *
     * @return The Function for this debug frame.
     */
    public FunctionMirror getFunction() {
        V8Object function = null;
        try {
            function = v8Object.executeObjectFunction(FUNC, null);
            return new FunctionMirror(function);
        } finally {
            if (function != null) {
                function.close();
            }
        }
    }

    @Override
    public boolean isFrame() {
        return true;
    }

}