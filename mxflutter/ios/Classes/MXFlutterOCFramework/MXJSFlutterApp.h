//
//  MXJSAppProxy.h
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/24.
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "MXJSExecutor.h"
#import <Flutter/Flutter.h>

@class MXJSFlutterEngine;
@class MXJSEngine;
@class MXJSExecutor;

NS_ASSUME_NONNULL_BEGIN

/// JSFlutterApp
@interface MXJSFlutterApp : NSObject

/// JS文件执行路径
@property (nonatomic, strong) NSString *appRootPath;
/// main.js文件路径
@property (nonatomic, strong) NSString *mainJSPath;

/// JS引擎，封装了常用JS API
@property (nonatomic, strong, nullable) MXJSEngine *jsEngine;

/// MXFlutter JS侧 App实例，用于通讯
@property (nonatomic, strong) JSValue *_Nullable jsAppObj;

/// 管理自己的MXJSFlutter引擎
@property (nonatomic, weak) MXJSFlutterEngine *_Nullable jsFlutterEngine;

/// App通道
@property (nonatomic, strong, readonly) FlutterMethodChannel *jsFlutterAppChannel;
/// Rebuild通道
@property (nonatomic, strong, readonly) FlutterBasicMessageChannel *jsFlutterAppRebuildChannel;
/// Push页面通道
@property (nonatomic, strong, readonly) FlutterBasicMessageChannel *jsFlutterAppNavigatorPushChannel;

/// 初始化方法
/// @param appRootPath app执行路径
/// @param jsFlutterEngine jsFlutter引擎
- (instancetype)initWithAppPath:(NSString *)appRootPath engine:(MXJSFlutterEngine *)jsFlutterEngine;

/// 运行app
/// @param flutterAppEnvironmentInfo flutter运行参数
- (void)runApp:(id)flutterAppEnvironmentInfo;
/// 退出app
- (void)exitApp;

/// main.js执行context
- (JSContext *)mainJSContext;
/// 执行js方法
/// @param jsValue js实例
/// @param method 方法名称
/// @param args 参数列表
/// @param callback 回调
- (void)invokeJSValue:(JSValue *)jsValue method:(NSString *)method args:(NSArray *)args callback:(MXJSValueCallback)callback;
/// 在js线程执行回调
/// @param block 回调
- (void)executeBlockOnJSThread:(dispatch_block_t)block;

@end

NS_ASSUME_NONNULL_END
