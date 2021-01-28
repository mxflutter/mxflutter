//
//  MXFFICallbackManager.h
//  MXFlutterOCFramework
//
//  Created by lucaliu on 2020/12/31.
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#ifndef MXFFICallbackManager_h
#define MXFFICallbackManager_h

#include <stdio.h>

// dart_api.h
typedef int64_t Dart_Port;

#define ILLEGAL_PORT ((Dart_Port)0)

typedef enum {
    Dart_TypedData_kByteData = 0,
    Dart_TypedData_kInt8,
    Dart_TypedData_kUint8,
    Dart_TypedData_kUint8Clamped,
    Dart_TypedData_kInt16,
    Dart_TypedData_kUint16,
    Dart_TypedData_kInt32,
    Dart_TypedData_kUint32,
    Dart_TypedData_kInt64,
    Dart_TypedData_kUint64,
    Dart_TypedData_kFloat32,
    Dart_TypedData_kFloat64,
    Dart_TypedData_kFloat32x4,
    Dart_TypedData_kInvalid
} Dart_TypedData_Type;

typedef struct _Dart_WeakPersistentHandle* Dart_WeakPersistentHandle;

typedef void (*Dart_WeakPersistentHandleFinalizer)(
    void* isolate_callback_data,
    Dart_WeakPersistentHandle handle,
    void* peer);

// dart_native_api.h
typedef enum {
    Dart_CObject_kNull = 0,
    Dart_CObject_kBool,
    Dart_CObject_kInt32,
    Dart_CObject_kInt64,
    Dart_CObject_kDouble,
    Dart_CObject_kString,
    Dart_CObject_kArray,
    Dart_CObject_kTypedData,
    Dart_CObject_kExternalTypedData,
    Dart_CObject_kSendPort,
    Dart_CObject_kCapability,
    Dart_CObject_kUnsupported,
    Dart_CObject_kNumberOfTypes
} Dart_CObject_Type;

typedef struct _Dart_CObject {
    Dart_CObject_Type type;
    union {
        bool as_bool;
        int32_t as_int32;
        int64_t as_int64;
        double as_double;
        char* as_string;
        struct {
            Dart_Port id;
            Dart_Port origin_id;
        } as_send_port;
        struct {
            int64_t id;
        } as_capability;
        struct {
            intptr_t length;
            struct _Dart_CObject** values;
        } as_array;
        struct {
            Dart_TypedData_Type type;
            intptr_t length;
            uint8_t* values;
        } as_typed_data;
        struct {
            Dart_TypedData_Type type;
            intptr_t length;
            uint8_t* data;
            void* peer;
            Dart_WeakPersistentHandleFinalizer callback;
        } as_external_typed_data;
    } value;
} Dart_CObject;

typedef bool (*Dart_PostCObjectType)(Dart_Port port_id, Dart_CObject* message);

typedef void (*Dart_NativeMessageHandler)(Dart_Port dest_port_id,
                                          Dart_CObject* message);

typedef Dart_Port (*Dart_NewNativePortType)(const char* name,
                                            Dart_NativeMessageHandler handler,
                                            bool handle_concurrently);

typedef bool (*Dart_CloseNativePortType)(Dart_Port native_port_id);

#ifdef __cplusplus
extern "C" {
#endif
    void RegisterSendPort(Dart_Port send_port);
    void RegisterDart_PostCObject(Dart_PostCObjectType function_pointer);
    void RegisterDart_NewNativePort(Dart_NewNativePortType function_pointer);
    void RegisterDart_CloseNativePort(Dart_CloseNativePortType function_pointer);

    /// native同步调用Flutter方法。需手动释放返回值 free(result);
    /// @param arguments 参数
    char * NativeCallFlutterFunctionSync(char *arguments);
#ifdef __cplusplus
}
#endif

#endif /* MXFFICallbackManager_hpp */
