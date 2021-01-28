//
//  MXFFI.h
//  MXFlutterOCFramework
//
//  Created by lucaliu on 2020/10/12.
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#if defined(__cplusplus)
#define MX_FFI_EXTERN extern "C" __attribute__((visibility("default"))) __attribute__((used))
#else
#define MX_FFI_EXTERN extern __attribute__((visibility("default"))) __attribute__((used))
#endif

/// 使用dart:ffi，实现dart->js的同步调用
@interface MXFFI : NSObject

/// 同步属性回调
MX_FFI_EXTERN const char *syncPropsCallback(char *args);

@end

NS_ASSUME_NONNULL_END
