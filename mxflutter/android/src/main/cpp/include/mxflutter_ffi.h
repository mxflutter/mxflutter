//
// Created by ericpsun on 2020/10/22.
//

#ifndef MXFLUTTER_MXFLUTTER_FFI_H
#define MXFLUTTER_MXFLUTTER_FFI_H

#include <jni.h>

extern "C" JNIEXPORT __attribute__((used))
const char *syncPropsCallback(char *args);

#endif //MXFLUTTER_MXFLUTTER_FFI_H
