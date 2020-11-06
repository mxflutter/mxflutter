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

@protocol MXJSAPIExport <NSObject, JSExport>

/// 引用js文件
/// @param filePath 文件路径
JSExportAs(require,
           - (JSValue *)require:(NSString *)filePath
           );

/// dart打印
/// @param string 内容
JSExportAs(dartPrint,
           - (void)dartPrint:(NSString *)string
           );

/// native打印
/// @param string 内容
JSExportAs(nativePrint,
           - (void)nativePrint:(NSString *)string
           );

/// 延时执行
/// @param function 执行方法
/// @param timeout 延后时长
JSExportAs(setTimeout,
           - (void)setTimeout:(JSValue *)function timeout:(JSValue *)timeout
           );

JSExportAs(mxJSBridgeInvokeFlutterCommonChannel,
           - (void)mxJSBridgeInvokeFlutterCommonChannel:(NSString *)callJSONStr function:(JSValue *)function
           );


JSExportAs(mxJSBridgeMethodChannelInvokeMethod,
           - (void)mxJSBridgeMethodChannelInvokeMethod:(NSString *)channelName methodName:(NSString *)methodName params:(JSValue *)params function:(JSValue *)function
           );

JSExportAs(mxJSBridgeMethodChannelSetMethodCallHandler,
           - (void)mxJSBridgeMethodChannelSetMethodCallHandler:(NSString *)channelName handler:(JSValue *)handler
           );

JSExportAs(mxJSBridgeEventChannelReceiveBroadcastStreamListen,
           - (void)mxJSBridgeEventChannelReceiveBroadcastStreamListen:(NSString *)channelName streamParam:(NSString *)streamParam onData:(JSValue *)onData onError:(JSValue *)onError onDone:(JSValue *)onDone cancelOnError:(NSNumber *)cancelOnError
           );

/// 设置当前运行的JSApp
/// @param jsAppObj app实例
JSExportAs(setCurrentJSApp,
         - (void)jsAPISetCurrentJSApp:(JSValue *)jsAppObj
           );

/// 调用Flutter侧reloadApp方法
/// @param jsAppObj app实例
/// @param data 参数
JSExportAs(callFlutterReloadApp,
           - (void)jsAPICallFlutterReloadApp:(JSValue *)jsAppObj widgetData:(NSString *)data
           );

/// 调用Flutter通道方法
/// @param method 方法名
/// @param arguments 参数
JSExportAs(callFlutterWidgetChannel,
           - (void)callFlutterWidgetChannelWithMethodName:(NSString *)method arguments:(id)arguments
           );

@end


@interface MXJSAPI : NSObject<MXJSAPIExport>

- (instancetype)initWithJSEngine:(MXJSEngine *)jsEngine context:(JSContext *)context;

@end

NS_ASSUME_NONNULL_END
