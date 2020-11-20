/*******************************************************************************
 * Copyright (c) 2015 EclipseSource and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    EclipseSource - initial API and implementation
 ******************************************************************************/
package com.eclipsesource.v8;

import java.io.Closeable;

/**
 * An interface used to denote all V8 Classes which can be released.
 */
public interface Releasable extends Closeable {

    /**
     * Release the underlying resources. Once an object is released
     * it typically cannot be used again.
     */
    void close();

    /**
     * Synonym for {@link #close()}.
     */
    void release();
}
