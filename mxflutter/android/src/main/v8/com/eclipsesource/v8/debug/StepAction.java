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

/**
 * An enumeration of possible Step Actions. A step action indicates to the
 * debugger how to proceed with the next step.
 */
public enum StepAction {
    STEP_OUT(0), STEP_NEXT(1), STEP_IN(2), STEP_FRAME(3);
    int index;

    StepAction(final int index) {
        this.index = index;
    }

}