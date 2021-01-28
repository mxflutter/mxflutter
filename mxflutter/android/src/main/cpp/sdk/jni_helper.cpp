//
// Created by ericpsun on 2020/10/21.
//
#include <jni.h>
#include <jni_helper.h>
JavaVM *global_jvm;

JNIEXPORT jint JNI_OnLoad(JavaVM *vm, void *reserved) {
  JNIEnv *env = nullptr;
  jint result = -1;
  if (vm->GetEnv((void **) &env, JNI_VERSION_1_6) != JNI_OK) {
    return result;
  }
  global_jvm = vm;
  return JNI_VERSION_1_6;
}

JNIEnv *get_env(int *attach) {
  if (global_jvm == nullptr) return nullptr;

  *attach = 0;
  JNIEnv *jni_env = nullptr;

  int status = global_jvm->GetEnv((void **)&jni_env, JNI_VERSION_1_6);

  if (status == JNI_EDETACHED || jni_env == nullptr) {
    status = global_jvm->AttachCurrentThread(&jni_env, nullptr);
    if (status < 0) {
      jni_env = nullptr;
    } else {
      *attach = 1;
    }
  }
  return jni_env;
}

jint del_env() {
  return global_jvm->DetachCurrentThread();
}
