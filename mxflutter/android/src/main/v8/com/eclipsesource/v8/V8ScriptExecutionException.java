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
 * An exception used to indicate that a script failed to execute.
 */
@SuppressWarnings("serial")
public class V8ScriptExecutionException extends V8ScriptException {

    V8ScriptExecutionException(final String fileName,
            final int lineNumber,
            final String message,
            final String sourceLine,
            final int startColumn,
            final int endColumn,
            final String jsStackTrace) {
        this(fileName, lineNumber, message, sourceLine, startColumn, endColumn, jsStackTrace, null);
    }

    V8ScriptExecutionException(final String fileName,
            final int lineNumber,
            final String message,
            final String sourceLine,
            final int startColumn,
            final int endColumn,
            final String jsStackTrace,
            final Throwable cause) {
        super(fileName, lineNumber, message, sourceLine, startColumn, endColumn, jsStackTrace, cause);
    }

}
