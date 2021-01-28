//
//  MXJSFlutterEngine.h
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/22.
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>
#import "MXJSFlutterApp.h"
#import <Flutter/Flutter.h>
#import "MXFDispose.h"

@class FlutterBinaryMessenger;
@class MXJSEngine;

NS_ASSUME_NONNULL_BEGIN
/*
 *mxflutter API
 *MXJSFlutterEngine
 *负责Flutter/Native/JS 三方衔接
 *管理FluterJS代码
 */
@interface MXJSFlutterEngine : NSObject <MXFDispose>

/// 当前执行app
@property (nonatomic, strong) MXJSFlutterApp *_Nullable currentApp;

/// binaryMessenger
@property (nonatomic, weak) NSObject<FlutterBinaryMessenger> *binaryMessenger;

/// 引擎Method Channel
@property (nonatomic, strong, readonly) FlutterMethodChannel *engineMethodChannel;

///初始化MXFlutter主引擎，设置FlutterEngine的binaryMessenger
- (instancetype)initWithFlutterMessager:(NSObject<FlutterBinaryMessenger> *)binaryMessenger;

// MARK: - native -> flutter
//--------------------------------------------
//调用Flutter切换到JSWidget，显示JS渲染的内容
- (void)callFlutterReloadAppWithJSWidgetData:(NSString *)widgetData;

/// 调用Flutter切换到JSWidget，显示JS渲染的内容
/// @param routeName 路由名称
/// @param widgetData widget数据
- (void)callFlutterReloadAppWithRouteName:(NSString *)routeName widgetData:(NSString *)widgetData;

/// 调用FlutterCommonChannel方法
/// @param argumentsJSONStr json字符串
/// @param callback 回调
- (void)invokeFlutterCommonChannel:(NSString *)argumentsJSONStr callback:(void (^)(id _Nullable result))callback;

/// 调用FlutterMethodChannel方法
/// @param channelName channel名称
/// @param methodName method名称
/// @param params 参数
/// @param callback 回调
- (void)callFlutterMethodChannelInvoke:(NSString *)channelName
                            methodName:(NSString *)methodName
                                params:(NSDictionary *)params
                              callback:(void (^)(id _Nullable result))callback;

/// 调用EventChannelReceiveBroadcastStreamListen
/// @param channelName channel名称
/// @param streamParam 参数
/// @param onDataId onData标识
/// @param onErrorId onError标识
/// @param onDoneId onDoneId标识
/// @param cancelOnError cancelOnError标识
- (void)callFlutterEventChannelReceiveBroadcastStreamListenInvoke:(NSString *_Nonnull)channelName
                                                      streamParam:(NSString *_Nullable)streamParam
                                                         onDataId:(NSString *_Nullable)onDataId
                                                        onErrorId:(NSString *_Nullable)onErrorId
                                                         onDoneId:(NSString *_Nullable)onDoneId
                                                    cancelOnError:(NSNumber *_Nullable)cancelOnError;

/// 移除MirrorObjs引用
/// @param mirrorIDArray mirrorID数组
- (void)invokeFlutterRemoveMirrorObjsRef:(NSArray *)mirrorIDArray;

/// 调用MethodChannel的setMethodCallHandler回调
/// @param channelName 通道名称
/// @param methodCall 方法名称
/// @param callback 回调
- (void)callJSMethodCallHandler:(NSString *)channelName methodCall:(FlutterMethodCall *)methodCall callback:(void (^)(id _Nullable result))callback;

@end

NS_ASSUME_NONNULL_END
