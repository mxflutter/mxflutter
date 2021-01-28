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

#define MXJSFlutterLog(fmt, ...)    \
    NSLog((@"MXJSFlutter:[Native]-" \
            "|%s|"                  \
            "[%d]-" fmt),           \
          __FUNCTION__, __LINE__, ##__VA_ARGS__);

#define MXFLogInfo(fmt, ...)              \
    NSLog((@"MXJSFlutter:[Native]-[info]" \
            "|%s|"                        \
            "[%d]-" fmt),                 \
          __FUNCTION__, __LINE__, ##__VA_ARGS__);

#define MXFLogWarn(fmt, ...)              \
    NSLog((@"MXJSFlutter:[Native]-[warn]" \
            "|%s|"                        \
            "[%d]-" fmt),                 \
          __FUNCTION__, __LINE__, ##__VA_ARGS__);
#define MXFLogError(fmt, ...)            \
    NSLog((@"MXJSFlutter:[Native]-[err]" \
            "|%s|"                       \
            "[%d]-" fmt),                \
          __FUNCTION__, __LINE__, ##__VA_ARGS__);

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

/// JS异常回调
#define MXFLUTTER_JSEXCEPTION_HANDLER @"mxflutterJSExceptionHandler"
/// JS引擎初始化完成回调
#define MXFLUTTER_JSENGINE_INIT_SUCCESS_HANDLER @"mxflutterJSEngineInitSuccessHandler"
/// 业务JS Bundle文件前缀
#define MXFLUTTER_BIZ_JSBUNDLE_FILE_PREFIX @"bundle-"

/// JS文件类型
typedef NS_ENUM(NSInteger, MXFlutterJSFileType) {
    MXFlutterJSFileType_Main, // main.js
    MXFlutterJSFileType_Biz,  // bundle-xxx.js
};
