/**
 * Copyright 2016, Genuitec, LLC
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Genuitec LLC - initial API and implementation
 ******************************************************************************/
package com.eclipsesource.v8.debug;

import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Function;
import com.eclipsesource.v8.V8Object;
import java.io.IOException;
import java.io.InputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.LinkedList;
import java.util.List;

/**
 * <p>V8DebugServer enables debuggers to connect to J2V8 via V8 server sockets debug protocol.
 * Server has to be created in the same thread as the provided V8 runtime has been created (the V8 thread).
 * You can specify port and whether the {@link #start()} method should
 * block until a client connects. {@link #setTraceCommunication(boolean)} allows to output
 * communication details for debugging purposes. Before creating V8 runtime you need to set V8 flag to expose
 * debug object. If you do not intend to set other flags, than you can use {@link #configureV8ForDebugging()}
 * method, otherwise set {@code -expose-debug-as=__j2v8_Debug} flag through {@link V8#setFlags(String)}.
 *
 * <p>Client connection is handled in a separate thread, however, commands are processed in the V8 thread.
 * Therefore it is vital to provide an opportunity to process requests by calling
 * {@link #processRequests(long)} method from the V8 thread. This will for instance
 * allow to install breakpoints before the JavaScript code starts to execute. It is also good to call that
 * method when V8 thread is idle to promptly provide responses to the debugger to avoid timeouts.
 *
 * <p>Example code:
 *
 * <code><br>
 * &nbsp;&nbsp;//configure for debugging before creating runtime<br>
 * &nbsp;&nbsp;V8DebugServer.configureV8ForDebugging();<br>
 * <br>
 * &nbsp;&nbsp;//create V8 runtime<br>
 * &nbsp;&nbsp;V8 runtime = V8.createV8Runtime();<br>
 * <br>
 * &nbsp;&nbsp;//create and start debug server<br>
 * &nbsp;&nbsp;int port = 0;<br>
 * &nbsp;&nbsp;boolean waitForConnection = true;<br>
 * &nbsp;&nbsp;server = new V8DebugServer(runtime, port, waitForConnection);<br>
 * &nbsp;&nbsp;System.out.println("V8 Debug Server listening on port "<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;+ server.getPort());<br>
 * &nbsp;&nbsp;server.start();<br>
 * <br>
 * &nbsp;&nbsp;//execute script and provide name for it<br>
 * &nbsp;&nbsp;runtime.executeVoidScript("var i = 15", "myscript.js", 0);<br>
 *
 * </code>
 *
 * @author piotr@genuitec.com
 */
@SuppressWarnings("nls")
public class V8DebugServer {

    /**
     * Name under which internal V8 debug object is going to be exposed in the runtime.
     * You can change the name if you are passing a different one through {@code -expose-debug-as}
     * flag.
     */
    public static String DEBUG_OBJECT_NAME              = "__j2v8_Debug";

    private static final String DEBUG_BREAK_HANDLER            = "__j2v8_debug_handler";
    private static final String MAKE_BREAK_EVENT               = "__j2v8_MakeBreakEvent";
    private static final String MAKE_COMPILE_EVENT             = "__j2v8_MakeCompileEvent";
    private static final String SET_LISTENER                   = "setListener";
    private static final String V8_DEBUG_OBJECT                = "Debug";

    //Headers
    private static final String HEADER_TYPE                    = "Type: ";
    private static final String HEADER_V8_VERSION              = "V8-Version: ";
    private static final String HEADER_PROTOCOL_VERSION        = "Protocol-Version: ";
    private static final String HEADER_EMBEDDING_HOST          = "Embedding-Host: ";

    private static final String V8_VERSION                     = "4.10.253";
    private static final String J2V8_VERSION                   = "4.0.0";
    private static final String PROTOCOL_VERSION               = "1";

    //Protocol consts
    private static final Charset PROTOCOL_CHARSET               = Charset.forName("UTF-8");
    private static final String PROTOCOL_EOL                   = "\r\n";
    private static final byte[]  PROTOCOL_EOL_BYTES             = PROTOCOL_EOL.getBytes(PROTOCOL_CHARSET);
    private static final String PROTOCOL_CONTENT_LENGTH_HEADER = "Content-Length:";
    private static final byte[]  PROTOCOL_CONTENT_LENGTH_BYTES  = PROTOCOL_CONTENT_LENGTH_HEADER.getBytes(PROTOCOL_CHARSET);
    private static final int     PROTOCOL_BUFFER_SIZE           = 4096;

    /**
     * Utility method for simplification of configuring V8 for debugging support.
     */
    public static void configureV8ForDebugging() {
        try {
            V8.setFlags("-expose-debug-as=" + DEBUG_OBJECT_NAME);
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    private ServerSocket server;
    private Socket client;
    private Object clientLock         = new Object();

    private V8           runtime;
    private V8Object     debugObject;
    private V8Object     runningStateDcp;
    private V8Object     stoppedStateDcp;
    private boolean      waitForConnection;
    private boolean      traceCommunication = false;

    private List<String> requests           = new LinkedList<String>();

    /**
     * Creates V8DebugServer.
     *
     * @param runtime
     * @param port
     * @param waitForConnection
     */
    public V8DebugServer(final V8 runtime, final int port, final boolean waitForConnection) {
        this.runtime = runtime;
        this.waitForConnection = waitForConnection;

        V8Object debugScope = runtime.getObject(DEBUG_OBJECT_NAME);
        if (debugScope == null) {
            System.err.println("Cannot initialize debugger server - global debug object not found.");
            return;
        }
        try {
            debugObject = debugScope.getObject(V8_DEBUG_OBJECT);
        } finally {
            debugScope.close();
        }

        runtime.executeVoidScript("(function() {\n"
                + " " + DEBUG_OBJECT_NAME + ".Debug. " + MAKE_BREAK_EVENT + " = function (break_id,breakpoints_hit) {\n"
                + "  return new " + DEBUG_OBJECT_NAME + ".BreakEvent(break_id,breakpoints_hit);\n"
                + " }\n"
                + " " + DEBUG_OBJECT_NAME + ".Debug. " + MAKE_COMPILE_EVENT + " = function(script,type) {\n"
                + "  var scripts = " + DEBUG_OBJECT_NAME + ".Debug.scripts()\n"
                + "  for (var i in scripts) {\n"
                + "   if (scripts[i].id == script.id()) {\n"
                + "     return new " + DEBUG_OBJECT_NAME + ".CompileEvent(scripts[i], type);\n"
                + "   }\n"
                + "  }\n"
                + "  return {toJSONProtocol: function() {return ''}}\n"
                + " }\n"
                + "})()");
        try {
            server = new ServerSocket(port);
        } catch (Exception e) {
            logError(e);
        }
    }

    /**
     * Returns port on which server is listening or -1 if server failed to bound to a port.
     * @return port or -1 if server failed to bound to a port
     */
    public int getPort() {
        return (server != null) && server.isBound() ? server.getLocalPort() : -1;
    }

    /**
     * Output all communication to the console. For purpose of debugging V8DebugServer itself.
     * @param value
     */
    public void setTraceCommunication(final boolean value) {
        traceCommunication = value;
    }

    /**
     * Starts accepting client connections and blocks until a client connects
     * if {@code waitForConnection} has been passed to V8DebugServer constructor.
     */
    public void start() {
        if (server == null) {
            return;
        }
        boolean waitForConnection = this.waitForConnection;
        Thread clientThread = new Thread(new ClientLoop(), "J2V8 Debugger Server");
        clientThread.setDaemon(true);
        clientThread.start();

        setupEventHandler();

        runningStateDcp = runtime.executeObjectScript("(function() {return new " + DEBUG_OBJECT_NAME + ".DebugCommandProcessor(null, true)})()");

        if (waitForConnection) {
            synchronized (clientLock) {
                while (this.waitForConnection) {
                    try {
                        clientLock.wait();
                    } catch (InterruptedException e) {
                        //ignore
                    }
                }
            }

            //Process initial requests
            //Give 100ms for initial debugger connection setup
            try {
                processRequests(100);
            } catch (InterruptedException e) {
                //ignore
            }
        }

    }

    public void stop() {
        try {
            server.close();

            synchronized (clientLock) {
                if (client != null) {
                    client.close();
                    client = null;
                }
            }
        } catch (IOException e) {
            logError(e);
        }

        //release resources
        if (runningStateDcp != null) {
            runningStateDcp.close();
            runningStateDcp = null;
        }
        if (debugObject != null) {
            debugObject.close();
            debugObject = null;
        }
        if (stoppedStateDcp != null) {
            stoppedStateDcp.close();
            stoppedStateDcp = null;
        }
    };

    private void sendJson(String json) throws IOException {
        json = json.replace("\\/", "/"); // Unescape slashes.
        sendMessage("", json);
    }

    protected void logError(final Throwable t) {
        t.printStackTrace();
    }

    private void sendMessage(final String header, final String contents) throws IOException {
        synchronized (clientLock) {
            if (!isConnected()) {
                throw new IOException("There is no connected client.");
            }

            byte[] contentBytes = contents.getBytes(PROTOCOL_CHARSET);

            StringBuilder sb = new StringBuilder();

            //append custom headers
            sb.append(header);

            //append content length header
            sb.append(PROTOCOL_CONTENT_LENGTH_HEADER);
            sb.append(Integer.toString(contentBytes.length));
            sb.append(PROTOCOL_EOL);

            //skip tools info
            sb.append(PROTOCOL_EOL);

            //send headers to the client
            client.getOutputStream().write(sb.toString().getBytes(
                    PROTOCOL_CHARSET));

            //send contents to the client
            if (contentBytes.length > 0) {
                client.getOutputStream().write(contentBytes);
            }
        }
    }

    private boolean isConnected() {
        synchronized (clientLock) {
            return (server != null) && (client != null) && client.isConnected();
        }
    }

    public void processRequests(final long timeout) throws InterruptedException {
        if (server == null) {
            return;
        }
        long start = System.currentTimeMillis();
        do {
            String[] reqs;
            do {
                synchronized (requests) {
                    reqs = requests.toArray(new String[requests.size()]);
                    requests.clear();
                }
                for (String req : reqs) {
                    try {
                        processRequest(req);
                    } catch (Exception e) {
                        logError(e);
                    }
                }
            } while (reqs.length > 0);
            if (timeout > 0) {
                Thread.sleep(10);
            }
        } while ((timeout > 0) && ((start + timeout) > System.currentTimeMillis()));
    }

    private void processRequest(final String message) throws IOException {
        if (traceCommunication) {
            System.out.println("Got message: \n" + message.substring(0, Math
                    .min(message.length(), 1000)));
        }
        V8Array params = new V8Array(runtime);
        params.push(message);

        @SuppressWarnings("resource")
        V8Object dcp = stoppedStateDcp != null ? stoppedStateDcp : runningStateDcp;
        Object result = dcp.executeFunction("processDebugJSONRequest", params);

        String json = result.toString();

        if ((stoppedStateDcp == null) && json.contains("\"running\":false")) {
            //XXX Need to implement functionality by adding to V8 class
            //    breakpoints before initial script or function execution
            json = json.replace("\"running\":false", "\"running\":true")
                    .replace("\"success\":true", "\"success\":false")
                    .replace("{\"", "{\"message\":\"Client requested suspension is not supported on J2V8.\",\"");
            dcp.add("running_", true);
        }

        if (traceCommunication) {
            System.out.println("Returning response: \n" + json.substring(0, Math
                    .min(json.length(), 1000)));
        }
        sendJson(json);
    }

    private void setupEventHandler() {
        EventHandler handler = new EventHandler();
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

    private void enterBreakLoop(final V8Object execState, final V8Object eventData) throws IOException {
        try {
            V8Array params = new V8Array(runtime);
            try {
                params.push(false);
                stoppedStateDcp = execState.executeObjectFunction("debugCommandProcessor", params);
            } finally {
                params.close();
            }

            //send event to debugger
            int breakId = execState.getInteger("break_id");
            V8Array breakpointsHit = eventData.getArray("break_points_hit_");
            V8Object event = null;

            params = new V8Array(runtime);
            try {
                params.push(breakId);
                params.push(breakpointsHit);
                event = debugObject.executeObjectFunction(MAKE_BREAK_EVENT, params);
                String json = event.executeStringFunction("toJSONProtocol", null);
                if (traceCommunication) {
                    System.out.println("Sending event (Break):\n" + json);
                }
                sendJson(json);
            } finally {
                params.close();
                breakpointsHit.close();
                if (event != null) {
                    event.close();
                }
            }

            //process requests until one of the resumes execution
            while (isConnected() && !stoppedStateDcp.executeBooleanFunction("isRunning", null)) {
                try {
                    processRequests(10);
                } catch (InterruptedException e) {
                    //ignore
                }
            }
        } finally {
            stoppedStateDcp.close();
            stoppedStateDcp = null;
        }
    }

    private void sendCompileEvent(final V8Object eventData) throws IOException {
        if (!isConnected()) {
            return;
        }
        //send event to debugger
        int type = eventData.getInteger("type_");
        V8Object script = eventData.getObject("script_");
        V8Object event = null;

        V8Array params = new V8Array(runtime);
        try {
            params.push(script);
            params.push(type);
            event = debugObject.executeObjectFunction(MAKE_COMPILE_EVENT, params);
            String json = event.executeStringFunction("toJSONProtocol", null);
            if (traceCommunication) {
                System.out.println("Sending event (CompileEvent):\n" + json.substring(0, Math
                        .min(json.length(), 1000)));
            }
            if (json.length() > 0) {
                sendJson(json);
            }
        } finally {
            params.close();
            script.close();
            if (event != null) {
                event.close();
            }
        }
    }

    private class EventHandler implements JavaVoidCallback {

        @Override
        public void invoke(final V8Object receiver, final V8Array parameters) {
            if ((parameters == null) || parameters.isUndefined()) {
                return;
            }
            V8Object execState = null;
            V8Object eventData = null;
            try {
                int event = parameters.getInteger(0);
                execState = parameters.getObject(1);
                eventData = parameters.getObject(2);

                if (traceCommunication) {
                    String type = "unknown";
                    switch (event) {
                        case 1:
                            type = "Break";
                            break;
                        case 2:
                            type = "Exception";
                            break;
                        case 3:
                            type = "NewFunction";
                            break;
                        case 4:
                            type = "BeforeCompile";
                            break;
                        case 5:
                            type = "AfterCompile";
                            break;
                        case 6:
                            type = "CompileError";
                            break;
                        case 7:
                            type = "PromiseEvent";
                            break;
                        case 8:
                            type = "AsyncTaskEvent";
                            break;
                    }
                    System.out.println("V8 has emmitted an event of type " + type);
                }

                if (!isConnected()) {
                    return;
                }

                switch (event) {
                    case 1: //Break
                        enterBreakLoop(execState, eventData);
                        break;
                    case 5: //afterCompile
                    case 6: //compileError
                        sendCompileEvent(eventData);
                        break;
                    case 2: //exception
                    default:
                }
            } catch (Exception e) {
                logError(e);
            } finally {
                safeRelease(execState);
                safeRelease(eventData);
            }
        }

        private void safeRelease(final Releasable object) {
            if ((object != null)) {
                object.release();
            }
        }

    }

    private class ClientLoop implements Runnable {

        private int from;

        @Override
        public void run() {
            while (true) {
                try {
                    Socket socket = server.accept();
                    socket.setTcpNoDelay(true);
                    synchronized (clientLock) {
                        client = socket;
                        waitForConnection = false;
                        clientLock.notifyAll();
                    }
                    startHandshake();
                    processClientRequests();
                } catch (Exception e) {
                    synchronized (clientLock) {
                        if (client != null) {
                            try {
                                client.close();
                            } catch (IOException ex) {
                                //ignore
                            }
                            client = null;
                        }
                    }
                    logError(e);
                }
            }
        }

        private void startHandshake() throws IOException {
            StringBuilder sb = new StringBuilder();

            sb.append(HEADER_V8_VERSION);
            sb.append(V8_VERSION);
            sb.append(PROTOCOL_EOL);

            sb.append(HEADER_PROTOCOL_VERSION);
            sb.append(PROTOCOL_VERSION);
            sb.append(PROTOCOL_EOL);

            sb.append(HEADER_EMBEDDING_HOST);
            sb.append("j2v8 ");
            sb.append(J2V8_VERSION);
            sb.append(PROTOCOL_EOL);

            sb.append(HEADER_TYPE);
            sb.append("connect");
            sb.append(PROTOCOL_EOL);

            sendMessage(sb.toString(), "");
        }

        private void processClientRequests() throws IOException {
            final byte[] EMPTY_ARR = new byte[] {};

            byte[] buf = new byte[PROTOCOL_BUFFER_SIZE];
            int bytesRead;
            int offset = 0;

            //Message data
            boolean toolInfoSkipped = false;
            byte[] messageBytes = EMPTY_ARR;
            int contentLength = -1;

            InputStream cIn;
            synchronized (clientLock) {
                cIn = client.getInputStream();
            }

            while ((bytesRead = cIn.read(buf, offset, PROTOCOL_BUFFER_SIZE - offset)) > 0) {
                bytesRead += offset;
                from = 0;
                do {
                    if (contentLength < 0) {
                        contentLength = readContentLength(buf, bytesRead);
                        if (contentLength < 0) {
                            break;
                        }
                    }
                    if (!toolInfoSkipped) {
                        toolInfoSkipped = skipToolInfo(buf, bytesRead);
                        if (!toolInfoSkipped) {
                            break;
                        }
                    }
                    int length = Math.min(contentLength - messageBytes.length, bytesRead - from);
                    messageBytes = join(messageBytes, buf, from, length);
                    from += length;
                    if (messageBytes.length == contentLength) {
                        String message = new String(messageBytes, PROTOCOL_CHARSET);
                        synchronized (requests) {
                            requests.add(message);
                        }
                        contentLength = -1;
                        toolInfoSkipped = false;
                        messageBytes = EMPTY_ARR;
                    }
                } while (from < bytesRead);
                if (from < bytesRead) {
                    System.arraycopy(buf, from, buf, 0, bytesRead - from);
                    offset = bytesRead - from;
                } else {
                    offset = 0;
                }
            }
        }

        private int readContentLength(final byte[] bytes, final int to) throws IOException {
            int pos = indexOf(PROTOCOL_CONTENT_LENGTH_BYTES, bytes, from, to);
            if (pos < 0) {
                return -1;
            }
            pos += PROTOCOL_CONTENT_LENGTH_BYTES.length;
            int end = indexOf(PROTOCOL_EOL_BYTES, bytes, pos, to);
            if (end < 0) {
                return -1;
            }
            String str = new String(bytes, pos, end - pos, PROTOCOL_CHARSET);
            int contentLength;
            try {
                contentLength = Integer.parseInt(str.trim());
            } catch (Exception ex) {
                throw new IOException("Invalid content length header: '" + str + "' in message" +
                        new String(bytes, PROTOCOL_CHARSET));
            }
            from = end + PROTOCOL_EOL_BYTES.length;
            return contentLength;
        }

        private boolean skipToolInfo(final byte[] bytes, final int n) {
            int end = indexOf(PROTOCOL_EOL_BYTES, bytes, from, n);
            if (end < 0) {
                return false;
            }
            from = end + PROTOCOL_EOL_BYTES.length;
            return true;
        }

        private int indexOf(final byte[] pattern, final byte[] array, final int start, final int end) {
            int len = pattern.length;
            for (int i = start; i < end; i++) {
                for (int j = 0; j <= len; j++) {
                    if (j == len) {
                        //pattern matches at i
                        return i;
                    }
                    if (((i + j) >= end) || (array[i + j] != pattern[j])) {
                        //pattern does not match at i
                        break;
                    }
                }
            }
            return -1;
        }

        private byte[] join(final byte[] arr1, final byte[] arr2, final int startPos, final int length) {
            byte[] res = new byte[arr1.length + length];
            System.arraycopy(arr1, 0, res, 0, arr1.length);
            System.arraycopy(arr2, startPos, res, arr1.length, length);
            return res;
        }

    };
}
