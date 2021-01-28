//
//  MXFFICallbackManager.cpp
//  MXFlutterOCFramework
//
//  Created by lucaliu on 2020/12/31.
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#include "MXFFICallbackManager.h"
#include <android/log.h>
#include <iostream>

Dart_PostCObjectType Dart_PostCObject_ = nullptr;
Dart_Port send_port_;
Dart_NewNativePortType Dart_NewNativePort_ = nullptr;
Dart_CloseNativePortType Dart_CloseNativePort_ = nullptr;

void RegisterSendPort(Dart_Port send_port) { send_port_ = send_port; }

void RegisterDart_PostCObject(Dart_PostCObjectType function_pointer) {
    Dart_PostCObject_ = function_pointer;
}

void RegisterDart_NewNativePort(Dart_NewNativePortType function_pointer) {
    Dart_NewNativePort_ = function_pointer;
}

void RegisterDart_CloseNativePort(Dart_CloseNativePortType function_pointer) {
    Dart_CloseNativePort_ = function_pointer;
}

void Fatal(char const *file, int line, char const *error) {
//  printf("MXFFICallbackManager::FATAL %s:%i\n", file, line);
//  printf("MXFFICallbackManager::FATAL %s\n", error);
//  Dart_DumpNativeStackTrace(NULL);
//  Dart_PrepareToAbort();
//  do not call abort, it will shutdown android vm
//  abort();
    __android_log_print(ANDROID_LOG_ERROR,
                        "mxflutternative",
                        "NativeCallFlutterFunctionSync fatal:%s\nline:%d\nerror:%s",
                        file,
                        line,
                        error);
}

#define FATAL(error) Fatal(__FILE__, __LINE__, error)

class PendingCall {
    public:
        PendingCall(void **buffer, size_t *length)
            : response_buffer_(buffer), response_length_(length) {
          receive_port_ =
              Dart_NewNativePort_("cpp-response", &PendingCall::HandleResponse,
                                  /*handle_concurrently=*/false);
        }
        ~PendingCall() { Dart_CloseNativePort_(receive_port_); }

        Dart_Port port() const { return receive_port_; }

        void PostAndWait(Dart_Port port, Dart_CObject* object) {
            std::unique_lock<std::mutex> lock(mutex);
            const bool success = Dart_PostCObject_(send_port_, object);
            if (!success) FATAL("Failed to send message, invalid port or isolate died");

//            printf("C   :  Waiting for result.\n");
            while (!notified) {
                cv.wait(lock);
            }
        }
        
        static void HandleResponse(Dart_Port p, Dart_CObject *message) {
            if (message->type != Dart_CObject_kArray) {
                FATAL("C   :   Wrong Data: message->type != Dart_CObject_kArray.\n");
            }
            Dart_CObject **c_response_args = message->value.as_array.values;
            Dart_CObject *c_pending_call = c_response_args[0];
            Dart_CObject *c_message = c_response_args[1];
//            printf("C   :   HandleResponse (call: %lx, message: %lx).\n",
//                   reinterpret_cast<intptr_t>(c_pending_call),
//                   reinterpret_cast<intptr_t>(c_message));

            auto pending_call = reinterpret_cast<PendingCall *>(
                c_pending_call->type == Dart_CObject_kInt64
                    ? c_pending_call->value.as_int64
                    : c_pending_call->value.as_int32);

            pending_call->ResolveCall(c_message);
        }

    private:
        void ResolveCall(Dart_CObject *bytes) {
            assert(bytes->type == Dart_CObject_kTypedData);
            if (bytes->type != Dart_CObject_kTypedData) {
                FATAL("C   :   Wrong Data: bytes->type != Dart_CObject_kTypedData.\n");
            }
            const intptr_t response_length = bytes->value.as_typed_data.length;
            const uint8_t *response_buffer = bytes->value.as_typed_data.values;
//            printf("C   :    ResolveCall(length: %ld, buffer: %lx).\n",
//                   response_length, reinterpret_cast<intptr_t>(response_buffer));

            void *buffer = malloc(response_length+1);
            memset(buffer, 0, response_length+1);
            memmove(buffer, response_buffer, response_length);

            *response_buffer_ = buffer;
            *response_length_ = response_length;
            
//            printf("C   :     Notify result ready.\n");
            notified = true;
            cv.notify_one();
        }
        
        std::mutex mutex;
        std::condition_variable cv;
        bool notified = false;

        Dart_Port receive_port_;
        void **response_buffer_;
        size_t *response_length_;
};


/// Native同步调用Flutter方法
/// @param arguments 参数
char * NativeCallFlutterFunctionSync(char *arguments) {
    void* response_buffer = nullptr;
    size_t response_length = 0;

    PendingCall pending_call/**/(&response_buffer, &response_length);
    
    Dart_CObject c_send_port;
    c_send_port.type = Dart_CObject_kSendPort;
    c_send_port.value.as_send_port.id = pending_call.port();
    c_send_port.value.as_send_port.origin_id = ILLEGAL_PORT;

    Dart_CObject c_pending_call;
    c_pending_call.type = Dart_CObject_kInt64;
    c_pending_call.value.as_int64 = reinterpret_cast<int64_t>(&pending_call);

    Dart_CObject c_request_data;
    c_request_data.type = Dart_CObject_kString;
    c_request_data.value.as_string = arguments;

    Dart_CObject* c_request_arr[] = {&c_send_port, &c_pending_call, &c_request_data};
    Dart_CObject c_request;
    c_request.type = Dart_CObject_kArray;
    c_request.value.as_array.values = c_request_arr;
    c_request.value.as_array.length =
        sizeof(c_request_arr) / sizeof(c_request_arr[0]);

//    printf("C   :  Dart_PostCObject_(request: %lx, call: %lx).\n",
//           reinterpret_cast<intptr_t>(&c_request),
//           reinterpret_cast<intptr_t>(&c_pending_call));
    pending_call.PostAndWait(send_port_, &c_request);
//    printf("C   :  Received result.\n");
    char *result = reinterpret_cast<char*>(response_buffer);
    return result;
}
