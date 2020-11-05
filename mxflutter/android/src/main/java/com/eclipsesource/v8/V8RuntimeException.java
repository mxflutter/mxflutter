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
 * A top-level exception used to indicate that a script failed. In most cases
 * a more specific exception will be thrown.
 */
@SuppressWarnings("serial")
public class V8RuntimeException extends RuntimeException {

    V8RuntimeException() {
    }

    V8RuntimeException(final String message) {
        super(message);
    }

}
