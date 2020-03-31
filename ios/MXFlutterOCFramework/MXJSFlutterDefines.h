//
//  MXJSFlutter.h
//  MXFlutterOCFramework
//
//  Created by soapyang on 2019/1/8.
//  Copyright © 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>

//把JS文件重定向到本地地址，简单支持模拟器JS文件热重载
//Flutter的热重载，经常出问题
//仅支持模拟器环境使用
#if TARGET_IPHONE_SIMULATOR

#define JSFLUTTER_SRC_BASE_DIR ([PROJECT_DIR stringByDeletingLastPathComponent])
#define JSFLUTTER_FRAMEWORK_DIR  @"lib/mxflutter_framework/mxf_js_framework"
#define JSFLUTTER_DART_FRAMEWORK_DIR  @"lib/mxflutter_framework/mxf_js_framework/dart_js_framework"

#else

#define JSFLUTTER_SRC_BASE_DIR ([[NSBundle mainBundle] bundlePath])
#define JSFLUTTER_FRAMEWORK_DIR  @"mxf_js_framework"
#define JSFLUTTER_DART_FRAMEWORK_DIR  @"mxf_js_framework/dart_js_framework"

#endif


#define JSFLUTTER_SRC_DIR  @"mxflutter_js_src"

#define MXJSFlutterLog(fmt, ...) NSLog((@"MXJSFlutter:[Native]-" "|%s|" "[%d]-" fmt), __FUNCTION__, __LINE__, ##__VA_ARGS__);

#define MXFLogWarn(fmt, ...) NSLog((@"MXJSFlutter:[Native]-[warm]" "|%s|" "[%d]-" fmt), __FUNCTION__, __LINE__, ##__VA_ARGS__);
#define MXFLogError(fmt, ...) NSLog((@"MXJSFlutter:[Native]-[err]" "|%s|" "[%d]-" fmt), __FUNCTION__, __LINE__, ##__VA_ARGS__);

#ifndef MXF_DEBUG
#if DEBUG
#define MXF_DEBUG 1
#else
#define MXF_DEBUG 0
#endif
#endif

#if defined(__cplusplus)
#define MX_EXTERN extern "C" __attribute__((visibility("default")))
#define MX_EXTERN_C_BEGIN extern "C" {
#define MX_EXTERN_C_END }
#else
#define MX_EXTERN extern __attribute__((visibility("default")))
#define MX_EXTERN_C_BEGIN
#define MX_EXTERN_C_END
#endif


