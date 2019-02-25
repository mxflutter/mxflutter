//
//  DartVM.hpp
//  DartVmLite
//
//  Created by consoar on 2019/1/7.
//  Copyright © 2019 consoar. All rights reserved.
//

#ifndef DartVM_hpp
#define DartVM_hpp

#include <stdio.h>
#include "dart_api.h"
#include <string>

static const int DEFAULT_VM_SERVICE_SERVER_PORT = 8182;

struct DartNativeFunctionValue {
    const char* name;
    Dart_NativeFunction function;
};

class DartVM {
public:
    explicit DartVM(const char* script_path,
                    const char* main_script = NULL);
    int initializeVM(int argc, char * argv[]);
    int startMainIsolate();
    void shutdownMainIsolate();
    void enterMainIsolate();
    void exitMainIsolate();

    int dartFunctionInvoke(const char *function_name, int nargs, Dart_Handle* args, Dart_Handle library = NULL, Dart_Handle *resultPtr = NULL);
    int dartFunctionInvokeWithClass(const char *function_name, int nargs, Dart_Handle* args, const char *class_name, Dart_Handle *resultPtr = NULL);

    //绑定Native方法
    const char *libraryUrlInRootPath(const char *file_name);
    void addNativeFunctionBinding(const char *function_name,Dart_NativeFunction function);
    void addNativeFunctionBindingInLibrary(const char *library_url,const char *function_name,Dart_NativeFunction function);
    void removeNativeFunctionBinding(const char *function_name);

//    //参数转换
//    template <typename T>
//    Dart_Handle toDartType(const T value)
//    {
//        return tonic::DartConverter<T>::ToDart(value);
//    }
//    
//    template <typename T>
//    T fromDartType(Dart_Handle value)
//    {
//        return tonic::DartConverter<T>::FromDart(value);
//    }
    Dart_Handle toDartTypeString(const std::string value);
    std::string fromDartTypeString(Dart_Handle value);
    Dart_Handle toDartTypeInt(const int value);
    int fromDartTypeInt(Dart_Handle value);
private:
    bool initialized_VM_; // 是否初始化了VM
    bool running_main_isolate_; // 是否启动了main_isolate
    bool enter_main_isolate_; // 是否在main_isolate中
    Dart_Isolate main_isolate_;
    char* main_script_path_;
    char* main_script_name_;
    char* root_script_path_;

    bool runMainIsolate(const char* script_name);
};

#endif /* DartVMLite_hpp */
