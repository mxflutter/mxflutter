//
// Created by ericpsun on 2020/10/23.
//
#include <mxflutter_app.h>
#include <jni.h>
#include <mxflutter_ffi.h>
#include <android/log.h>

jobject mx_flutter_ffi;

extern "C"
JNIEXPORT void JNICALL
Java_com_mojitox_mxflutter_framework_ffi_MxFlutterFfi_init(JNIEnv *env,
                                                         jobject instance,
                                                         jobject obj) {
//---- 强全局变量
  mx_flutter_ffi = env->NewGlobalRef(obj);
  __android_log_print(ANDROID_LOG_ERROR,
                      "mxflutternative",
                      "init mxflutterapp");
}

extern "C"
JNIEXPORT void JNICALL
Java_com_mojitox_mxflutter_framework_ffi_MxFlutterFfi_release(JNIEnv *env,
                                                            jobject instance) {
  env->DeleteGlobalRef(mx_flutter_ffi);
  __android_log_print(ANDROID_LOG_ERROR,
                      "mxflutternative",
                      "release mxflutterapp");
}

jobject get_mx_flutter_ffi() {
  return mx_flutter_ffi;
}
