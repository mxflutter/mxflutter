//
// Created by ericpsun on 2020/10/23.
//
#include <mxflutter_app.h>
#include <jni.h>
#include <mxflutter_ffi.h>
#include <android/log.h>

jobject current_app;

extern "C"
JNIEXPORT void JNICALL
Java_com_mojitox_mxflutter_framework_MXJSFlutterApp_init(JNIEnv *env,
                                                         jobject instance,
                                                         jobject obj) {
//---- 强全局变量
  current_app = env->NewGlobalRef(obj);
  __android_log_print(ANDROID_LOG_ERROR,
                      "mxflutternative",
                      "init mxflutterapp");
}

extern "C"
JNIEXPORT void JNICALL
Java_com_mojitox_mxflutter_framework_MXJSFlutterApp_release(JNIEnv *env,
                                                            jobject instance) {
  env->DeleteGlobalRef(current_app);
  __android_log_print(ANDROID_LOG_ERROR,
                      "mxflutternative",
                      "release mxflutterapp");
}

jobject getMxFlutterApp() {
  return current_app;
}
