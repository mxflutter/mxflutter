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
 * An exception that indicates that the execution of a script failed.
 * Details about the exception, such as the line number, stack trace, and
 * message can retrieved using the accessors.
 */
@SuppressWarnings("serial")
public abstract class V8ScriptException extends V8RuntimeException {

    private final String fileName;
    private final int       lineNumber;
    private final String jsMessage;
    private final String sourceLine;
    private final int       startColumn;
    private final int       endColumn;
    private final String jsStackTrace;

    V8ScriptException(final String fileName,
            final int lineNumber,
            final String jsMessage,
            final String sourceLine,
            final int startColumn,
            final int endColumn,
            final String jsStackTrace,
            final Throwable cause) {
        this.fileName = fileName;
        this.lineNumber = lineNumber;
        this.jsMessage = jsMessage;
        this.sourceLine = sourceLine;
        this.startColumn = startColumn;
        this.endColumn = endColumn;
        this.jsStackTrace = jsStackTrace;
        if (cause != null) {
            initCause(cause);
        }
    }

    /**
     * Get the JavaScript Stack as a String.
     *
     * @return The JavaScript stack.
     */
    public String getJSStackTrace() {
        return jsStackTrace;
    }

    /**
     * Get the file name contains the script that was currently executing.
     *
     * @return The file name that contains the script.
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * Get the line number that the failure occurred on.
     *
     * @return The line number the failure occurred on.
     */
    public int getLineNumber() {
        return lineNumber;
    }

    /**
     * Get the JavaScript column where the error begins.
     *
     * @return The JavaScript column where the error begins.
     */
    public int getStartColumn() {
        return startColumn;
    }

    /**
     * Get the JavaScript column where the error ends.
     *
     * @return The JavaScript column where the error ends.
     */
    public int getEndColumn() {
        return endColumn;
    }

    /**
     * Get the JavaScript line of source that caused the error.
     *
     * @return The JavaScript line of source that caused the error.
     */
    public String getSourceLine() {
        return sourceLine;
    }

    @Override
    public String toString() {
        StringBuilder result = new StringBuilder();
        result.append(createMessageLine());
        result.append(createMessageDetails());
        result.append(createJSStackDetails());
        result.append("\n");
        result.append(this.getClass().getName());
        return result.toString();
    }

    /*
     * (non-Javadoc)
     * @see java.lang.Throwable#getMessage()
     */
    @Override
    public String getMessage() {
        return createMessageLine();
    }

    /**
     * Get the message set by the JavaScript exception.
     *
     * @return The message set by the JavaScript exception.
     */
    public String getJSMessage() {
        return jsMessage;
    }

    private String createMessageLine() {
        return fileName + ":" + lineNumber + ": " + jsMessage;
    }

    private String createJSStackDetails() {
        if (jsStackTrace != null) {
            return "\n" + jsStackTrace;
        }
        return "";
    }

    private String createMessageDetails() {
        StringBuilder result = new StringBuilder();
        if ((sourceLine != null) && !sourceLine.isEmpty()) {
            result.append('\n');
            result.append(sourceLine);
            result.append('\n');
            if (startColumn >= 0) {
                result.append(createCharSequence(startColumn, ' '));
                result.append(createCharSequence(endColumn - startColumn, '^'));
            }
        }
        return result.toString();
    }

    private char[] createCharSequence(final int length, final char c) {
        char[] result = new char[length];
        for (int i = 0; i < length; i++) {
            result[i] = c;
        }
        return result;
    }

}
