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
package com.eclipsesource.v8.debug.mirror;

/**
 * Represents a JS Script location.
 */
public class SourceLocation {

    private final String scriptName;
    private final int    position;
    private final int    line;
    private final int    column;
    private String sourceText;

    /**
     * Represents a JS Script Source Location
     * @param scriptName The name of the script
     * @param position The position in the script
     * @param line The line number
     * @param column The column number
     * @param sourceText The sourceCode at this location
     */
    public SourceLocation(final String scriptName, final int position, final int line, final int column, final String sourceText) {
        this.scriptName = scriptName;
        this.position = position;
        this.line = line;
        this.column = column;
        this.sourceText = sourceText;
    }

    @Override
    public String toString() {
        return scriptName + " : " + position + " : " + line + " : " + column + " : " + sourceText;
    }

    /**
     * Returns the name of the script for this SourceLocation.
     * @return The name of the script
     */
    public String getScriptName() {
        return scriptName;
    }

    /**
     * Returns the position of this SourceLocation.
     * @return The position of this SourceLocation.
     */
    public int getPosition() {
        return position;
    }

    /**
     * Returns the line number of this SourceLocation.
     * @return The line number of this SourceLocation.
     */
    public int getLine() {
        return line;
    }

    /**
     * Returns the column number of this SourceLocation.
     * @return The column number of this SourceLocation.
     */
    public int getColumn() {
        return column;
    }

    /**
     * Returns the source text for this SourceLocation.
     * @return The source text for this SourceLocation.
     */
    public String getSourceText() {
        return sourceText;
    }
}
