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
package com.eclipsesource.v8.utils;

import com.eclipsesource.v8.V8;

/**
 * Classes can implement this interface to execute arbitrary code on
 * isolated V8 runtime on its own thread. Instances of classes that
 * implement this interface can be passed to V8Thread.
 */
public interface V8Runnable {

    /**
     * Execute the code on the provided runtime.
     *
     * @param runtime The V8 runtime assigned to this runnable.
     */
    public void run(final V8 runtime);

}
