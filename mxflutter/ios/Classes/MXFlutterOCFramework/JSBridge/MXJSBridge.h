//
//  MXJSBridge.h
//  MXFlutterOCFramework
//
//  Created by soap on 2020/3/15.
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//  Some code/ideas   Copyright (c) Facebook ReactNative, Inc. and its affiliates.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>
#import "MXBridgeModule.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "MXJSFlutterDefines.h"

NS_ASSUME_NONNULL_BEGIN

@class MXJSFlutterApp;

/// JSFlutter桥接类
@interface MXJSBridge : NSObject

/// 单例
+ (instancetype)shareInstance;

/// 注册flutterApp
/// @param flutterApp app实例
/// @param jsAPPValueBridge module
- (void)registerModules:(MXJSFlutterApp *)flutterApp jsAPPValueBridge:(JSValue *)jsAPPValueBridge;

/// 调用方法
/// @param eventName 时间名称
/// @param data 数据
/// @param jsCallbackFun 回调
- (void)sendEventWithName:(NSString *)eventName data:(id)data callback:(JSValue *_Nullable)jsCallbackFun;

/// 获取module
/// @param moduleClass module类型
- (id)moduleForClass:(Class)moduleClass;

@end

NS_ASSUME_NONNULL_END
