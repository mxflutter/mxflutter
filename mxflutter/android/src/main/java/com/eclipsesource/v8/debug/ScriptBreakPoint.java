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

import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8ResultUndefined;

/**
 * Represents a BreakPoint.
 */
public class ScriptBreakPoint implements Releasable {

    private static final String CONDITION     = "condition";
    private static final String LINE          = "line";
    private static final String NUMBER        = "number";
    private static final String SET_CONDITION = "setCondition";

    private V8Object v8Object;

    ScriptBreakPoint(final V8Object v8Object) {
        this.v8Object = v8Object.twin();
    }

    /**
     * Returns the ID of this breakpoint.
     *
     * @return The ID (breakpoint number) of this breakpoint.
     */
    public int getBreakPointNumber() {
        return v8Object.executeIntegerFunction(NUMBER, null);
    }

    /**
     * Returns the line number of this breakpoint.
     *
     * @return The line number of this breakpoint.
     */
    public int getLine() {
        return v8Object.executeIntegerFunction(LINE, null);
    }

    /**
     * Sets a condition to be evaluated before determining if
     * the breakpoint event should be fired.
     *
     * @param condition A JavaScript condition to be evaluated.
     */
    public void setCondition(final String condition) {
        V8Array parameters = new V8Array(v8Object.getRuntime());
        parameters.push(condition);
        try {
            v8Object.executeVoidFunction(SET_CONDITION, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Returns the condition set on this breakpoint or the String
     * 'undefined' if a condition was not set.
     *
     * @return The condition set on this breakpoint.
     */
    public String getCondition() {
        try {
            return v8Object.executeStringFunction(CONDITION, null);
        } catch (V8ResultUndefined e) {
            return "undefined";
        }
    }

    @Override
    public void close() {
        if ((v8Object != null) && !v8Object.isReleased()) {
            v8Object.close();
            v8Object = null;
        }
    }

    @Override
    public void release() {
        close();
    }
}
