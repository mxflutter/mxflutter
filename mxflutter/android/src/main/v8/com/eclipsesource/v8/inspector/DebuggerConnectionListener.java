package com.eclipsesource.v8.inspector;

public interface DebuggerConnectionListener {
    public void onDebuggerConnected();

    public void onDebuggerDisconnected();
}
