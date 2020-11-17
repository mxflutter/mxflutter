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
package com.eclipsesource.v8.debug;

import com.eclipsesource.v8.V8Object;

/**
 * Holds information about break events.
 */
public class BreakEvent extends EventData {

    private static final String SOURCE_LINE_TEXT = "sourceLineText";
    private static final String SOURCE_COLUMN    = "sourceColumn";
    private static final String SOURCE_LINE      = "sourceLine";

    BreakEvent(final V8Object eventData) {
        super(eventData);
    }

    /**
     * Returns the source line that this break event occurred on.
     *
     * @return The line number that this break event occurred on.
     */
    public int getSourceLine() {
        return v8Object.executeIntegerFunction(SOURCE_LINE, null);
    }

    /**
     * Returns the source column that this break event occurred on.
     *
     * @return The column number that this break event occurred on.
     */
    public int getSourceColumn() {
        return v8Object.executeIntegerFunction(SOURCE_COLUMN, null);
    }

    /**
     * Returns the text of the line that this event occurred on.
     *
     * @return The text of the line that this event occurred on.
     */
    public String getSourceLineText() {
        return v8Object.executeStringFunction(SOURCE_LINE_TEXT, null);
    }

}
