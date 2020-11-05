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
 * A base class for all V8 resources. V8 resources must
 * be closed/released. The rules for releasing resources is as
 * follows:
 *
 * 1. If you created it, you must close it, with one exception;
 *    if the object is being passed pack via a return statement,
 *    the system will release it for you.
 *
 * 2. If the system created it, you don’t need to worry about it,
 *    with one caveat; if the object was returned to you as a
 *    result of a method call, you must close it.
 */
abstract public class V8Value implements Releasable {

    public static final int NULL                         = 0;
    public static final int UNKNOWN                      = 0;
    public static final int INTEGER                      = 1;
    public static final int INT_32_ARRAY                 = 1;
    public static final int DOUBLE                       = 2;
    public static final int FLOAT_64_ARRAY               = 2;
    public static final int BOOLEAN                      = 3;
    public static final int STRING                       = 4;
    public static final int V8_ARRAY                     = 5;
    public static final int V8_OBJECT                    = 6;
    public static final int V8_FUNCTION                  = 7;
    public static final int V8_TYPED_ARRAY               = 8;
    public static final int BYTE                         = 9;
    public static final int INT_8_ARRAY                  = 9;
    public static final int V8_ARRAY_BUFFER              = 10;
    public static final int UNSIGNED_INT_8_ARRAY         = 11;
    public static final int UNSIGNED_INT_8_CLAMPED_ARRAY = 12;
    public static final int INT_16_ARRAY                 = 13;
    public static final int UNSIGNED_INT_16_ARRAY        = 14;
    public static final int UNSIGNED_INT_32_ARRAY        = 15;
    public static final int FLOAT_32_ARRAY               = 16;
    public static final int UNDEFINED                    = 99;

    protected V8      v8;
    protected long    objectHandle;
    protected boolean released = true;

    protected V8Value() {
        super();
    }

    protected V8Value(final V8 v8) {
        if (v8 == null) {
            this.v8 = (V8) this;
        } else {
            this.v8 = v8;
        }
    }

    protected void initialize(final long runtimePtr, final Object data) {
        long objectHandle = v8.initNewV8Object(runtimePtr);
        released = false;
        addObjectReference(objectHandle);
    }

    protected void addObjectReference(final long objectHandle) throws Error {
        this.objectHandle = objectHandle;
        try {
            v8.addObjRef(this);
        } catch (Error e) {
            release();
            throw e;
        } catch (RuntimeException e) {
            release();
            throw e;
        }
    }


    /**
     * Returns a string representation of the V8 Type.
     * @param type Type to return as a string. See constants in V8Value.
     * @return The V8Value type as a string.
     * @deprecated Use
     */
    @Deprecated
    public static String getStringRepresentaion(final int type) {
        return getStringRepresentation(type);
    }

    /**
     * Returns a string representation of the V8 Type.
     * @param type Type to return as a string. See constants in V8Value.
     * @return The V8Value type as a string.
     */
    public static String getStringRepresentation(final int type) {
        switch (type) {
            case NULL:
                return "Null";
            case INTEGER:
                return "Integer";
            case DOUBLE:
                return "Double";
            case BOOLEAN:
                return "Boolean";
            case STRING:
                return "String";
            case V8_ARRAY:
                return "V8Array";
            case V8_OBJECT:
                return "V8Object";
            case V8_FUNCTION:
                return "V8Function";
            case V8_TYPED_ARRAY:
                return "V8TypedArray";
            case BYTE:
                return "Byte";
            case V8_ARRAY_BUFFER:
                return "V8ArrayBuffer";
            case UNSIGNED_INT_8_ARRAY:
                return "UInt8Array";
            case UNSIGNED_INT_8_CLAMPED_ARRAY:
                return "UInt8ClampedArray";
            case INT_16_ARRAY:
                return "Int16Array";
            case UNSIGNED_INT_16_ARRAY:
                return "UInt16Array";
            case UNSIGNED_INT_32_ARRAY:
                return "UInt32Array";
            case FLOAT_32_ARRAY:
                return "Float32Array";
            case UNDEFINED:
                return "Undefined";
            default:
                throw new IllegalArgumentException("Invalid V8 type: " + type);
        }
    }

    /**
     * Returns a constructor name of the V8 Value.
     *
     * @return The V8Value constructor name as a string.
     */
    public String getConstructorName() {
        v8.checkThread();
        v8.checkReleased();
        return v8.getConstructorName(v8.getV8RuntimePtr(), objectHandle);
    }

    /**
     * Determines if this value is undefined.
     *
     * @return Returns true if the value is undefined, false otherwise
     */
    public boolean isUndefined() {
        return false;
    }

    /**
     * Gets the runtime this Value was created on.
     *
     * @return Returns the V8 runtime this value is associated with.
     */
    public V8 getRuntime() {
        return v8;
    }

    /**
     * Returns the 'type' of this V8Value. The available types are defined
     * as constants in {@link V8Value}. Only types that inherit from
     * {@link V8Value} can be returned here.
     *
     * @return The 'type of this V8Value.
     */
    public int getV8Type() {
        if (isUndefined()) {
            return UNDEFINED;
        }
        v8.checkThread();
        v8.checkReleased();
        return v8.getType(v8.getV8RuntimePtr(), objectHandle);
    }

    /**
     * Creates a new Java object pointing at the same V8 Value
     * as this. If the value is mutated (by adding new members or
     * changing existing ones) then both the original and twin
     * will be updated. Twins are .equal and .strict equals, but
     * not == in Java.
     *
     * Twins must be closed separately since they have their own
     * native resources.
     *
     * @return A new Java object pointing at the same V8 Value
     * as this.
     */
    public V8Value twin() {
        if (isUndefined()) {
            return this;
        }
        v8.checkThread();
        v8.checkReleased();
        V8Value twin = createTwin();
        v8.createTwin(this, twin);
        return twin;
    }

    /**
     * Sets the V8Value as weak reference. A weak reference will eventually
     * be closed when no more references exist to this object. Once setWeak
     * is called, you should check if {@link V8Value#isReleased()} is true
     * before invoking any methods on this object.
     *
     * If any other references exist to this object, the object will not be
     * reclaimed. Even if no reference exist, V8 does not give any guarantee
     * the object will be closed, so this should only be used if there is no
     * other way to track object usage.
     *
     * @return The receiver.
     */
    public V8Value setWeak() {
        v8.checkThread();
        v8.checkReleased();
        v8.v8WeakReferences.put(getHandle(), this);
        v8.setWeak(v8.getV8RuntimePtr(), getHandle());
        return this;
    }

    /**
     * Clears any weak reference set on this V8Value and makes this a strong
     * reference. Strong references will not be garbage collected and this
     * Object must be explicitly released.
     *
     * Calling clearWeak does nothing if the object is not currently set
     * to weak.
     *
     * @return The receiver.
     */
    public V8Value clearWeak() {
        v8.checkThread();
        v8.checkReleased();
        v8.v8WeakReferences.remove(getHandle());
        v8.clearWeak(v8.getV8RuntimePtr(), getHandle());
        return this;
    }

    /**
     * If {@link V8Value#setWeak()} has been called on this Object, this method
     * will return true. Otherwise it will return false.
     *
     * @return Returns true if this object has been set 'Weak', return false otherwise.
     */
    public boolean isWeak() {
        v8.checkThread();
        v8.checkReleased();
        return v8.isWeak(v8.getV8RuntimePtr(), getHandle());
    }

    /*
     * (non-Javadoc)
     * @see java.io.Closeable#close()
     */
    @Override
    public void close() {
        v8.checkThread();
        if (!released) {
            try {
                v8.releaseObjRef(this);
            } finally {
                released = true;
                v8.release(v8.getV8RuntimePtr(), objectHandle);
            }
        }
    }

    /**
     * Releases the native resources associated with this V8Value.
     *
     * @deprecated use close() instead.
     */
    @Override
    @Deprecated
    public void release() {
        close();
    }

    /**
     * Determine if the native resources have been released. Once released
     * a V8 Value can no longer be used.
     *
     * @return Returns true if this object has been released, false otherwise.
     */
    public boolean isReleased() {
        return released;
    }

    /**
     * Performs a JS === on the parameter and the receiver.
     *
     * @param that The Object to compare this object against.
     * @return Returns true iff this === that
     */
    public boolean strictEquals(final Object that) {
        v8.checkThread();
        checkReleased();
        if (that == this) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (!(that instanceof V8Value)) {
            return false;
        }
        if (isUndefined() && ((V8Value) that).isUndefined()) {
            return true;
        }
        if (((V8Value) that).isUndefined()) {
            return false;
        }
        return v8.strictEquals(v8.getV8RuntimePtr(), getHandle(), ((V8Value) that).getHandle());
    }

    protected long getHandle() {
        checkReleased();
        return objectHandle;
    }

    protected abstract V8Value createTwin();

    /*
     * (non-Javadoc)
     * @see java.lang.Object#equals(java.lang.Object)
     */
    @Override
    public boolean equals(final Object that) {
        return strictEquals(that);
    }

    /**
     * Performs a JS == on the parameter and the receiver.
     *
     * @param that The Object to compare this object against.
     * @return Returns true iff this == that
     */
    public boolean jsEquals(final Object that) {
        v8.checkThread();
        checkReleased();
        if (that == this) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (!(that instanceof V8Value)) {
            return false;
        }
        if (isUndefined() && ((V8Value) that).isUndefined()) {
            return true;
        }
        if (((V8Value) that).isUndefined()) {
            return false;
        }
        return v8.equals(v8.getV8RuntimePtr(), getHandle(), ((V8Value) that).getHandle());
    }

    /*
     * (non-Javadoc)
     * @see java.lang.Object#hashCode()
     */
    @Override
    public int hashCode() {
        v8.checkThread();
        checkReleased();
        return v8.identityHash(v8.getV8RuntimePtr(), getHandle());
    }

    protected void checkReleased() {
        if (released) {
            throw new IllegalStateException("Object released");
        }
    }

}
