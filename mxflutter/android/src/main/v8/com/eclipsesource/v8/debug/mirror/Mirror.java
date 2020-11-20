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

import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8ResultUndefined;

/**
 * A mirror is used to represent a copy (mirror) of a runtime object
 * during a debug session.
 *
 * Mirror hierarchy:
 *  - Mirror
 *     - ValueMirror
 *       - UndefinedMirror
 *       - NullMirror
 *       - NumberMirror
 *       - StringMirror
 *       - ObjectMirror
 *         - FunctionMirror
 *           - UnresolvedFunctionMirror
 *         - ArrayMirror
 *         - DateMirror
 *         - RegExpMirror
 *         - ErrorMirror
 *         - PromiseMirror
 *     - PropertyMirror
 *     - InternalPropertyMirror
 *     - FrameMirror
 *     - ScriptMirror
 */
public class Mirror implements Releasable {

    private static final String IS_UNDEFINED = "isUndefined";
    private static final String IS_NULL      = "isNull";
    private static final String IS_STRING    = "isString";
    private static final String IS_ARRAY     = "isArray";
    private static final String IS_FUNCTION  = "isFunction";
    private static final String IS_BOOLEAN   = "isBoolean";
    private static final String IS_NUMBER    = "isNumber";
    private static final String IS_OBJECT    = "isObject";
    private static final String IS_VALUE     = "isValue";

    protected V8Object v8Object;

    Mirror(final V8Object v8Object) {
        this.v8Object = v8Object.twin();
    }

    /**
     * Returns true if this mirror object points to the type 'undefined'.
     * False otherwise.
     *
     * @return True iff this mirror object points to an 'undefined' type.
     */
    public boolean isUndefined() {
        return v8Object.executeBooleanFunction(IS_UNDEFINED, null);
    }

    /**
     * Returns true if this mirror object points to a 'value' type.
     *
     * @return True iff this mirror object points to a 'value' type.
     */
    public boolean isValue() {
        return false;
    }

    /**
     * Returns true if this mirror object points to 'null'.
     *
     * @return True iff this mirror object points to a 'null'.
     */
    public boolean isNull() {
        return false;
    }

    /**
     * Returns true if this mirror object points to a 'boolean' type.
     *
     * @return True iff this mirror object points to a 'boolean' type.
     */
    public boolean isBoolean() {
        return false;
    }

    /**
     * Returns true if this mirror object points to a 'number' type.
     *
     * @return True iff this mirror object points to a 'number' type.
     */
    public boolean isNumber() {
        return false;
    }

    /**
     * Returns true if this mirror object points to a 'String' type.
     *
     * @return True iff this mirror object points to a 'String' type.
     */
    public boolean isString() {
        return false;
    }

    /**
     * Returns true if this mirror object points to an 'Object' type.
     *
     * @return True iff this mirror object points to an 'Object' type.
     */
    public boolean isObject() {
        return false;
    }

    /**
     * Returns true if this mirror object points to a 'Function' type.
     *
     * @return True iff this mirror object points to a 'Function' type.
     */
    public boolean isFunction() {
        return false;
    }

    /**
     * Returns true if this mirror object points to an 'Array' type.
     *
     * @return True iff this mirror object points to an 'Array' type.
     */
    public boolean isArray() {
        return false;
    }

    /**
     * Returns true if this mirror object points to a 'Function' type.
     *
     * @return True iff this mirror object points to a 'Function' type.
     */
    public boolean isFrame() {
        return false;
    }

    /**
     * Returns true if this mirror object points to a 'Property' type.
     *
     * @return True iff this mirror object points to a 'Property' type.
     */
    public boolean isProperty() {
        return false;
    }

    /*
     * (non-Javadoc)
     * @see java.io.Closeable#close()
     */
    @Override
    public void close() {
        if ((v8Object != null) && !v8Object.isReleased()) {
            v8Object.close();
            v8Object = null;
        }
    }

    /*
     * (non-Javadoc)
     * @see com.eclipsesource.v8.Releasable#release()
     */
    @Override
    @Deprecated
    public void release() {
        close();
    }

    protected static boolean isValue(final V8Object mirror) {
        try {
            return mirror.executeBooleanFunction(IS_VALUE, null);
        } catch (V8ResultUndefined e) {
            return false;
        }
    }

    private static boolean isObject(final V8Object mirror) {
        try {
            return mirror.executeBooleanFunction(IS_OBJECT, null);
        } catch (V8ResultUndefined e) {
            return false;
        }
    }

    private static boolean isNumber(final V8Object mirror) {
        try {
            return mirror.executeBooleanFunction(IS_NUMBER, null);
        } catch (V8ResultUndefined e) {
            return false;
        }
    }

    private static boolean isBoolean(final V8Object mirror) {
        try {
            return mirror.executeBooleanFunction(IS_BOOLEAN, null);
        } catch (V8ResultUndefined e) {
            return false;
        }
    }

    private static boolean isFunction(final V8Object mirror) {
        try {
            return mirror.executeBooleanFunction(IS_FUNCTION, null);
        } catch (V8ResultUndefined e) {
            return false;
        }
    }

    private static boolean isArray(final V8Object mirror) {
        try {
            return mirror.executeBooleanFunction(IS_ARRAY, null);
        } catch (V8ResultUndefined e) {
            return false;
        }
    }

    private static boolean isString(final V8Object mirror) {
        try {
            return mirror.executeBooleanFunction(IS_STRING, null);
        } catch (V8ResultUndefined e) {
            return false;
        }
    }

    private static boolean isUndefined(final V8Object mirror) {
        try {
            return mirror.executeBooleanFunction(IS_UNDEFINED, null);
        } catch (V8ResultUndefined e) {
            return false;
        }
    }

    private static boolean isNull(final V8Object mirror) {
        try {
            return mirror.executeBooleanFunction(IS_NULL, null);
        } catch (V8ResultUndefined e) {
            return false;
        }
    }

    protected static ValueMirror createMirror(final V8Object mirror) {
        if (isNull(mirror)) {
            return new NullMirror(mirror);
        } else if (isUndefined(mirror)) {
            return new UndefinedMirror(mirror);
        } else if (isFunction(mirror)) {
            return new FunctionMirror(mirror);
        } else if (isArray(mirror)) {
            return new ArrayMirror(mirror);
        } else if (isObject(mirror)) {
            return new ObjectMirror(mirror);
        } else if (isString(mirror)) {
            return new StringMirror(mirror);
        } else if (isNumber(mirror)) {
            return new NumberMirror(mirror);
        } else if (isBoolean(mirror)) {
            return new BooleanMirror(mirror);
        }
        return new ValueMirror(mirror);
    }

    @Override
    public String toString() {
        return v8Object.toString();
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Mirror)) {
            return false;
        }
        return v8Object.equals(((Mirror) obj).v8Object);
    }

    @Override
    public int hashCode() {
        return v8Object.hashCode();
    }
}
