/*******************************************************************************
 * Copyright (c) 2016 Brandon Sanders
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Brandon Sanders - initial API and implementation and/or initial documentation
 ******************************************************************************/
package com.eclipsesource.v8.utils;

import com.eclipsesource.v8.V8;

/**
 * Wrapper class for an {@link com.eclipsesource.v8.V8} instance that allows
 * a V8 instance to be invoked from across threads without explicitly acquiring
 * or releasing locks.
 *
 * This class does not guarantee the safety of any objects stored in or accessed
 * from the wrapped V8 instance; it only enables callers to interact with a V8
 * instance from any thread. The V8 instance represented by this class should
 * still be treated with thread safety in mind
 *
 * @author Brandon Sanders [brandon@alicorn.io]
 * @author R. Ian Bull - Additional API
 */
public final class ConcurrentV8 {
    private V8 v8 = null;

    /**
     * Create a new ConcurrentV8. A ConcurrentV8 allows multiple
     * threads to work with the same V8 engine by releasing
     * the locks between calls.
     */
    public ConcurrentV8() {
        v8 = V8.createV8Runtime();
        v8.getLocker().release();
    }

    /**
     * Returns the V8 runtime backing by this ConcurrentV8
     *
     * @return The V8 runtime backing this ConcurrentV8
     */
    public V8 getV8() {
        return v8;
    }

    /**
     * Runs an {@link V8Runnable} on the V8 thread.
     *
     * <b>Note: </b> This method executes synchronously, not asynchronously;
     * it will not return until the passed {@link V8Runnable} is done
     * executing. The method is also synchronized, so it will block until it
     * gets a chance to run.
     *
     * @param runnable {@link V8Runnable} to run.
     */
    public synchronized void run(final V8Runnable runnable) {
        try {
            v8.getLocker().acquire();
            runnable.run(v8);
        } finally {
            if ((v8 != null) && (v8.getLocker() != null) && v8.getLocker().hasLock()) {
                v8.getLocker().release();
            }
        }
    }

    /**
     * Releases the underlying {@link V8} instance.
     *
     * This method should be invoked once you're done using this object,
     * otherwise a large amount of garbage could be left on the JVM due to
     * native resources.
     *
     * <b>Note:</b> If this method has already been called once, it
     * will do nothing.
     */
    public void release() {
        if ((v8 != null) && !v8.isReleased()) {
            // Release the V8 instance from the V8 thread context.
            run(new V8Runnable() {
                @Override
                public void run(final V8 v8) {
                    if ((v8 != null) && !v8.isReleased()) {
                        v8.close();
                    }
                }
            });
        }
    }
}
