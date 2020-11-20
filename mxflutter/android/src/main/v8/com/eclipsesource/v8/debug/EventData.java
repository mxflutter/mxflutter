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
import com.eclipsesource.v8.V8Object;

/**
 * Typed information about different debug events.
 */
public class EventData implements Releasable {

    protected V8Object v8Object;

    EventData(final V8Object eventData) {
        v8Object = eventData.twin();
    }

    @Override
    public void close() {
        if (!v8Object.isReleased()) {
            v8Object.close();
        }
    }

    @Override
    @Deprecated
    public void release() {
        close();
    }

}
