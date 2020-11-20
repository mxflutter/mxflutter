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

import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Function;
import com.eclipsesource.v8.V8Object;
import java.util.ArrayList;
import java.util.List;

/**
 * The entry point for the Debug API. The debug API is a Java API
 * that exposes V8's JavaScript API.
 *
 * The API requires that V8 be initialized with the runtime flag
 * '--expose-debug-as=__j2v8_debug_handler'.
 */
public class DebugHandler implements Releasable {

    public static enum DebugEvent {
        Undefined(0), Break(1), Exception(2), NewFunction(3), BeforeCompile(4), AfterCompile(5), CompileError(6), PromiseError(7), AsyncTaskEvent(8);
        int index;

        DebugEvent(final int index) {
            this.index = index;
        }
    }

    public static String DEBUG_OBJECT_NAME = "__j2v8_Debug";

    private static final String DEBUG_BREAK_HANDLER            = "__j2v8_debug_handler";
    private static final String SET_SCRIPT_BREAK_POINT_BY_NAME = "setScriptBreakPointByName";
    private static final String SET_BREAK_POINT                = "setBreakPoint";
    private static final String SET_LISTENER                   = "setListener";
    private static final String V8_DEBUG_OBJECT                = "Debug";
    private static final String DISABLE_SCRIPT_BREAK_POINT     = "disableScriptBreakPoint";
    private static final String ENABLE_SCRIPT_BREAK_POINT      = "enableScriptBreakPoint";
    private static final String CLEAR_BREAK_POINT              = "clearBreakPoint";
    private static final String DISABLE_ALL_BREAK_POINTS       = "disableAllBreakPoints";
    private static final String SCRIPT_BREAK_POINTS            = "scriptBreakPoints";
    private static final String FIND_SCRIPT_BREAK_POINT        = "findScriptBreakPoint";
    private static final String NUMBER                         = "number";
    private static final String CHANGE_BREAK_POINT_CONDITION   = "changeBreakPointCondition";

    private V8                 runtime;
    private V8Object           debugObject;
    private List<BreakHandler> breakHandlers = new ArrayList<BreakHandler>();

    /**
     * Creates the Debug Handler for a particular V8 runtime.
     * Before the runtime was created, V8.setFlags("expose-debug-as=__j2v8_debug_handler");
     * must be called.
     *
     * @param runtime The runtime on which to create the Debug Handler.
     */
    public DebugHandler(final V8 runtime) {
        this.runtime = runtime;
        setupDebugObject(runtime);
        setupBreakpointHandler();
    }

    /**
     * Adds a handler to be notified when a breakpoint is hit.
     *
     * @param handler The handler to notify.
     */
    public void addBreakHandler(final BreakHandler handler) {
        runtime.getLocker().checkThread();
        breakHandlers.add(handler);
    }

    /**
     * Removes a handler from the list of breakpoint handlers.
     * If the handler is not present in the list, the list is unchanged.
     *
     * @param handler The handler to remove.
     */
    public void removeBreakHandler(final BreakHandler handler) {
        runtime.getLocker().checkThread();
        breakHandlers.remove(handler);
    }

    /**
     * Registers a function breakpoint. When the JavaScript function
     * is invoked, the breakpoint will be 'hit'.
     *
     * @param function The function on which to register the breakpoint.
     * @return The berakpointID.
     */
    public int setBreakpoint(final V8Function function) {
        V8Array parameters = new V8Array(runtime);
        parameters.push(function);
        try {
            return debugObject.executeIntegerFunction(SET_BREAK_POINT, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Registers a breakpoint given a scriptID and line number. The breakpoint
     * will be 'hit' when the script is executed and the given line is reached.
     *
     * @param scriptID The ID of the script on which to set the breakpoint.
     * @param lineNumber The line number on which to set the breakpoint.
     * @return The berakpointID.
     */
    public int setScriptBreakpoint(final String scriptID, final int lineNumber) {
        V8Array parameters = new V8Array(runtime);
        parameters.push(scriptID);
        parameters.push(lineNumber);
        try {
            return debugObject.executeIntegerFunction(SET_SCRIPT_BREAK_POINT_BY_NAME, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Enables a breakpoint.
     *
     * @param breakpointID The breakpoint to enable.
     */
    public void enableScriptBreakPoint(final int breakpointID) {
        V8Array parameters = new V8Array(runtime);
        parameters.push(breakpointID);
        try {
            debugObject.executeVoidFunction(ENABLE_SCRIPT_BREAK_POINT, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Disables a breakpoint.
     *
     * @param breakpointID The breakpoint to disable
     */
    public void disableScriptBreakPoint(final int breakpointID) {
        V8Array parameters = new V8Array(runtime);
        parameters.push(breakpointID);
        try {
            debugObject.executeVoidFunction(DISABLE_SCRIPT_BREAK_POINT, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Removes a Breakpoint.
     *
     * @param breakpointID The ID of the breakpoint to remove.
     */
    public void clearBreakPoint(final int breakpointID) {
        V8Array parameters = new V8Array(runtime);
        parameters.push(breakpointID);
        try {
            debugObject.executeVoidFunction(CLEAR_BREAK_POINT, parameters);
        } finally {
            parameters.close();
        }
    }

    /**
     * Disables all breakpoints.
     */
    public void disableAllBreakPoints() {
        debugObject.executeVoidFunction(DISABLE_ALL_BREAK_POINTS, null);
    }

    /**
     * Returns a count of all the breakpoints
     *
     * @return A V8Array of Breakpoints.
     */
    public int getScriptBreakPointCount() {
        V8Array breakPoints = debugObject.executeArrayFunction(SCRIPT_BREAK_POINTS, null);
        try {
            return breakPoints.length();
        } finally {
            breakPoints.close();
        }
    }

    /**
     * Get all the BreakPoint IDs as an array.
     *
     * @return A list of BreakPoint IDs.
     */
    public int[] getScriptBreakPointIDs() {
        V8Array breakPoints = debugObject.executeArrayFunction(SCRIPT_BREAK_POINTS, null);
        try {
            int[] result = new int[breakPoints.length()];
            for (int i = 0; i < breakPoints.length(); i++) {
                V8Object breakPoint = breakPoints.getObject(i);
                try {
                    result[i] = breakPoint.executeIntegerFunction(NUMBER, null);
                } finally {
                    breakPoint.close();
                }
            }
            return result;
        } finally {
            breakPoints.close();
        }
    }

    /**
     * Get the BreakPoint as referenced by the given ID.
     *
     * @param breakPointID The BreakPoint ID.
     * @return The BreakPoint as referenced by the given ID.
     */
    public ScriptBreakPoint getScriptBreakPoint(final int breakPointID) {
        V8Array parameters = new V8Array(runtime);
        parameters.push(breakPointID);
        parameters.push(false);
        V8Object scriptBreakPoint = null;
        try {
            scriptBreakPoint = debugObject.executeObjectFunction(FIND_SCRIPT_BREAK_POINT, parameters);
            return new ScriptBreakPoint(scriptBreakPoint);
        } finally {
            parameters.close();
            if (scriptBreakPoint != null) {
                scriptBreakPoint.close();
            }
        }
    }

    /**
     * Changes the current condition on the breakpoint as specified by the breakpoint ID
     *
     * @param breakpointID The ID of the breakpoint of which to change the condition on
     * @param condition The new condition to set
     */
    public void changeBreakPointCondition(final int breakpointID, final String condition) {
        V8Array parameters = new V8Array(runtime);
        parameters.push(breakpointID);
        parameters.push(condition);
        try {
            debugObject.executeVoidFunction(CHANGE_BREAK_POINT_CONDITION, parameters);
        } finally {
            parameters.close();
        }
    }

    /*
     * (non-Javadoc)
     * @see java.io.Closeable#close()
     */
    @Override
    public void close() {
        debugObject.close();
    }

    @Override
    @Deprecated
    public void release() {
        close();
    }

    private void setupDebugObject(final V8 runtime) {
        V8Object outerDebug = runtime.getObject(DEBUG_OBJECT_NAME);
        try {
            debugObject = outerDebug.getObject(V8_DEBUG_OBJECT);
        } finally {
            outerDebug.close();
        }
    }

    private void setupBreakpointHandler() {
        BreakpointHandler handler = new BreakpointHandler();
        debugObject.registerJavaMethod(handler, DEBUG_BREAK_HANDLER);
        V8Function debugHandler = null;
        V8Array parameters = null;
        try {
            debugHandler = (V8Function) debugObject.getObject(DEBUG_BREAK_HANDLER);
            parameters = new V8Array(runtime);
            parameters.push(debugHandler);
            debugObject.executeFunction(SET_LISTENER, parameters);
        } finally {
            if ((debugHandler != null) && !debugHandler.isReleased()) {
                debugHandler.close();
            }
            if ((parameters != null) && !parameters.isReleased()) {
                parameters.close();
            }
        }
    }

    private class BreakpointHandler implements JavaVoidCallback {

        @Override
        public void invoke(final V8Object receiver, final V8Array parameters) {
            if ((parameters == null) || parameters.isUndefined()) {
                return;
            }
            int event = parameters.getInteger(0);
            for (BreakHandler handler : breakHandlers) {
                invokeHandler(parameters, event, handler);
            }
        }

        private void invokeHandler(final V8Array parameters, final int event, final BreakHandler handler) {
            V8Object execState = null;
            V8Object eventData = null;
            V8Object data = null;
            ExecutionState state = null;
            EventData typedEventData = null;
            try {
                execState = parameters.getObject(1);
                eventData = parameters.getObject(2);
                data = parameters.getObject(3);
                state = new ExecutionState(execState);
                DebugEvent type = DebugEvent.values()[event];
                typedEventData = createDebugEvent(type, eventData);
                handler.onBreak(type, state, typedEventData, data);
            } finally {
                safeRelease(execState);
                safeRelease(eventData);
                safeRelease(data);
                safeRelease(state);
                safeRelease(typedEventData);
            }
        }

        private EventData createDebugEvent(final DebugEvent type, final V8Object eventData) {
            switch (type) {
                case Break:
                    return new BreakEvent(eventData);
                case BeforeCompile:
                    return new CompileEvent(eventData);
                case AfterCompile:
                    return new CompileEvent(eventData);
                case Exception:
                    return new ExceptionEvent(eventData);
                default:
                    break;
            }
            return new EventData(eventData);
        }

        private void safeRelease(final Releasable object) {
            if ((object != null)) {
                object.release();
            }
        }

    }

}