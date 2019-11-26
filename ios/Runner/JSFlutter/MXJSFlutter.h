//
//  MXJSFlutter.h
//  Runner
//
//  Created by soapyang on 2019/1/8.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "MXJSFlutterEngine.h"
#import "MXJSFlutterApp.h"

//把JS文件重定向到本地地址，简单支持模拟器JS文件热重载
//Flutter的热重载，经常出问题
//仅支持模拟器环境使用
#if TARGET_IPHONE_SIMULATOR

#define JSFLUTTER_SRC_BASE_DIR ([PROJECT_DIR stringByDeletingLastPathComponent])

#else

#define JSFLUTTER_SRC_BASE_DIR ([[NSBundle mainBundle] bundlePath])

#endif


#define JSFLUTTER_FRAMEWORK_DIR  @"js_flutter_src/js_framework_lib"
#define JSFLUTTER_SRC_DIR  @"js_flutter_src"

#define MXJSFlutterLog(fmt, ...) NSLog((@"MXJSFlutter:[Native]-" "|%s|" "[%d]-" fmt), __FUNCTION__, __LINE__, ##__VA_ARGS__);



