//
//  MXJSAPI.h
//  MXFlutterOCFramework
//
//  Created by lucaliu on 2020/11/6.
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import <Flutter/Flutter.h>
#import "MXJSEngine.h"

NS_ASSUME_NONNULL_BEGIN

/// MXJSAPI导出的协议
@protocol MXJSAPIExport <NSObject, JSExport>

/// 引用js文件
/// @param filePath 文件路径
JSExportAs(require, -(JSValue *)require : (NSString *)filePath);

/// dart打印
/// @param string 内容
JSExportAs(dartPrint, -(void)dartPrint : (NSString *)string);

/// native打印
/// @param string 内容
JSExportAs(nativePrint, -(void)nativePrint : (NSString *)string);

/// 调用Flutter方法。使用FFI Port
/// @param callJSONStr json字符串
JSExportAs(mxJSBridgeInvokeFlutterFFIPort, -(NSString *)mxJSBridgeInvokeFlutterFFIPort : (NSString *)callJSONStr);

/// 调用Flutter方法。使用Common Channel
/// @param callJSONStr json字符串
/// @param function js回调
JSExportAs(mxJSBridgeInvokeFlutterCommonChannel, -(void)mxJSBridgeInvokeFlutterCommonChannel
           : (NSString *)callJSONStr function
           : (JSValue *)function);

/// js通过Method Channel调用方法
/// @param channelName channel名称
/// @param methodName method名称
/// @param params 参数
/// @param function js回调
JSExportAs(mxJSBridgeMethodChannelInvokeMethod, -(void)mxJSBridgeMethodChannelInvokeMethod
           : (NSString *)channelName methodName
           : (NSString *)methodName params
           : (JSValue *)params function
           : (JSValue *)function);

/// 设置Method Channle的handler
/// @param channelName channel名称
/// @param handler 回调
JSExportAs(mxJSBridgeMethodChannelSetMethodCallHandler, -(void)mxJSBridgeMethodChannelSetMethodCallHandler
           : (NSString *)channelName handler
           : (JSValue *)handler);

/// 设置EventChannelReceiveBroadcastStreamListen
/// @param channelName channel名称
/// @param streamParam stream参数
/// @param onData onData回调
/// @param onError onError回调
/// @param onDone onDone回调
/// @param cancelOnError cancelOnError回调
JSExportAs(mxJSBridgeEventChannelReceiveBroadcastStreamListen, -(void)mxJSBridgeEventChannelReceiveBroadcastStreamListen
           : (NSString *)channelName streamParam
           : (NSString *)streamParam onData
           : (JSValue *)onData onError
           : (JSValue *)onError onDone
           : (JSValue *)onDone cancelOnError
           : (NSNumber *)cancelOnError);

/// 设置当前运行的JSApp
/// @param jsAppObj app实例
JSExportAs(setCurrentJSApp, -(void)jsAPISetCurrentJSApp : (JSValue *)jsAppObj);

/// 调用Flutter侧reloadApp方法
/// @param jsAppObj app实例
/// @param data 参数
JSExportAs(callFlutterReloadApp, -(void)jsAPICallFlutterReloadApp : (JSValue *)jsAppObj widgetData : (NSString *)data);

/// 调用Flutter通道方法
/// @param method 方法名
/// @param arguments 参数
JSExportAs(callFlutterWidgetChannel, -(void)callFlutterWidgetChannelWithMethodName : (NSString *)method arguments : (id)arguments);

@end

/// 用于JS侧调用方法
@interface MXJSAPI : NSObject <MXJSAPIExport>

/// 初始化方法
/// @param jsEngine js引擎
/// @param context jsContext
- (instancetype)initWithJSEngine:(MXJSEngine *)jsEngine context:(JSContext *)context;

/// require方法
/// @param filePath 文件路径
- (JSValue *)require:(NSString *)filePath;

@end

NS_ASSUME_NONNULL_END
