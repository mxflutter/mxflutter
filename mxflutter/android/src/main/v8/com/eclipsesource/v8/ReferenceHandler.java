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
package com.eclipsesource.v8;

/**
 * Callback used to track when native handles are created and released.
 */
public interface ReferenceHandler {

    /**
     * Called when a native handle is first created. The V8Value
     * referenced by that handle is passed as a parameter.
     *
     * @param object The V8Value referenced by the handle
     */
    public void v8HandleCreated(V8Value object);

    /**
     * Called when a native handle is released. The V8Value
     * referenced by that handle is passed as a parameter.
     *
     * @param object The V8Value referenced by the handle
     */
    public void v8HandleDisposed(V8Value object);

}
