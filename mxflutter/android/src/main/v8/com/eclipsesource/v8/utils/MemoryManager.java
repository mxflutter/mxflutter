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
package com.eclipsesource.v8.utils;

import com.eclipsesource.v8.ReferenceHandler;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Value;
import java.util.ArrayList;
import java.util.Iterator;

/**
 * A memory manager that tracks all V8 Handles while the object is registered.
 * Once released, all V8 handles that were created while the memory manager
 * was active, will be released.
 *
 * It is important that no V8 handles (V8Objects, V8Arrays, etc...) that are
 * created while the memory manager is active, are persisted.
 *
 */
public class MemoryManager {

    private MemoryManagerReferenceHandler memoryManagerReferenceHandler;
    private V8                            v8;
    private ArrayList<V8Value> references = new ArrayList<V8Value>();
    private boolean                       releasing = false;
    private boolean                       released   = false;

    /**
     * Creates and registered a Memory Manager. After this, all V8 handles will be
     * tracked until release is called.
     *
     * @param v8 The V8 runtime to register this Memory Manager on
     */
    public MemoryManager(final V8 v8) {
        this.v8 = v8;
        memoryManagerReferenceHandler = new MemoryManagerReferenceHandler();
        v8.addReferenceHandler(memoryManagerReferenceHandler);
    }

    /**
     * Returns the number of handles currently being tracked by this
     * memory manager.
     *
     * Throws an IllegalStateException if the memory manager is used after it's
     * been released.
     *
     * @return The object reference count
     */
    public int getObjectReferenceCount() {
        checkReleased();
        return references.size();
    }

    /**
     * Persist an object that is currently being managed by this Manager.
     *
     * Objects that are being managed by a MemoryManager will be released
     * once the MemoryManager is released. If an object is persisted, it will
     * be remove from the MemoryManager's control and therefore will not
     * be released.
     *
     * @param object The object to persist
     */
    public void persist(final V8Value object) {
        v8.getLocker().checkThread();
        checkReleased();
        references.remove(object);
    }

    /**
     * Checks if the memory manager has been released or not. Released memory
     * managers can no longer be used.
     *
     * @return True if this memory manager has been released, false otherwise.
     */
    public boolean isReleased() {
        return released;
    }

    /**
     * Releases this Memory Manager and all V8Objects that were created while
     * this memory manager was active.
     */
    public void release() {
        v8.getLocker().checkThread();
        if (released) {
            return;
        }
        releasing = true;
        try {
            for (V8Value reference : references) {
                reference.close();
            }
            v8.removeReferenceHandler(memoryManagerReferenceHandler);
            references.clear();
        } finally {
            releasing = false;
        }
        released = true;
    }

    private void checkReleased() {
        if (released) {
            throw new IllegalStateException("Memory manager released");
        }
    }

    private class MemoryManagerReferenceHandler implements ReferenceHandler {

        @Override
        public void v8HandleCreated(final V8Value object) {
            references.add(object);
        }

        @Override
        public void v8HandleDisposed(final V8Value object) {
            if (!releasing) {
                Iterator<V8Value> iterator = references.iterator();
                while (iterator.hasNext()) {
                    if (iterator.next() == object) {
                        iterator.remove();
                        return;
                    }
                }
            }
        }
    }

}
