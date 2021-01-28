//
// Created by ericpsun on 2020/10/23.
//
#include <mxflutter_app.h>
#include <jni.h>
#include <mxflutter_ffi.h>
#include <MXFFICallbackManager.h>
#include <cstring>
#include <cstdlib>

jobject mx_flutter_ffi;

extern "C"
JNIEXPORT void JNICALL
Java_com_mojitox_mxflutter_framework_ffi_MxFlutterFfi_init(JNIEnv *env,
                                                           jobject instance,
                                                           jobject obj) {
//---- 强全局变量
  mx_flutter_ffi = env->NewGlobalRef(obj);
}

extern "C"
JNIEXPORT void JNICALL
Java_com_mojitox_mxflutter_framework_ffi_MxFlutterFfi_release(JNIEnv *env,
                                                              jobject instance) {
  env->DeleteGlobalRef(mx_flutter_ffi);
}

jobject get_mx_flutter_ffi() {
  return mx_flutter_ffi;
}
extern "C"
JNIEXPORT jstring JNICALL
Java_com_mojitox_mxflutter_framework_ffi_MxFlutterFfi_nativeCallFlutterFunctionSync(
    JNIEnv *env,
    jobject thiz,
    jstring json_string) {
  const char *convert_param = env->GetStringUTFChars(json_string, nullptr);
  char *result = NativeCallFlutterFunctionSync(strdup(convert_param));
  jstring resultString = env->NewStringUTF(result);
  free(result);
  return resultString;
}