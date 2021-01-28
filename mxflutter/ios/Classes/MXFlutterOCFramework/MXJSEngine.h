//
//  MXJSEngine.h
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/22.
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>
#import "MXJSExecutor.h"
#import <Flutter/Flutter.h>
#import <JavaScriptCore/JavaScriptCore.h>

@class MXJSFlutterEngine;
@class MXDispose;

NS_ASSUME_NONNULL_BEGIN

/*
 *MXJSEngine
 *负责Native/JS 二方衔接
 *导出Native业务接口
 */
@interface MXJSEngine : NSObject <MXFDispose>

/// jsFlutter引擎
@property (nonatomic, weak) MXJSFlutterEngine *jsFlutterEngine;

/// js执行者
@property (nonatomic, strong) MXJSExecutor *jsExecutor;

/// jsApp实例
@property (nonatomic, strong) JSValue *jsAppObj;

/// js回调缓存字典
@property (nonatomic, strong, readonly) NSMutableDictionary *jsCallbackCache;

@property (nonatomic, assign) BOOL isJSEngineSetup;

+ (instancetype)preloadInstance;

+ (void)releasePreloadInstance;

/// 预加载JS引擎
/// @param completion 回调
+ (void)preloadJSEngine:(void (^)(BOOL success, NSString *errorMsg))completion;

/// 添加require搜索路径
/// @param dir 搜索路径
- (void)addSearchDir:(NSString *)dir;

/// 调用js回调方法
/// @param callbackId 回调ID
/// @param param 参数
- (void)callJSCallbackFunction:(NSString *)callbackId param:(id)param;

/// 调用js回调方法
/// @param channelName channel名称
/// @param methodCall methodCall
/// @param callback 回调
- (void)callJSCallbackFunctionWithChannelName:(NSString *)channelName
                                   methodCall:(FlutterMethodCall *)methodCall
                                     callback:(void (^)(id _Nullable result))callback;

/// 获取require文件的绝对路径
/// @param filePath 文件名称
- (NSString *)calcRequireJSAbsolutePath:(NSString *)filePath;

/// 保存js方法
/// @param function 方法
- (NSString *)storeJsCallback:(JSValue *)function;

@end

NS_ASSUME_NONNULL_END
