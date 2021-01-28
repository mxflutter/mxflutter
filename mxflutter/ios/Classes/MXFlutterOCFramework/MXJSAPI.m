//
//  MXJSAPI.m
//  MXFlutterOCFramework
//
//  Created by lucaliu on 2020/11/6.
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import "MXJSAPI.h"
#import "JSModule.h"
#import "MXJSFlutterEngine.h"
#import "MXFFICallbackManager.h"

@interface MXJSAPI ()

/// js引擎
@property (nonatomic, weak) MXJSEngine *jsEngine;
/// jsContext
@property (nonatomic, strong) JSContext *context;
/// 当前FlutterApp
@property (nonatomic, strong) MXJSFlutterApp *currentJSFlutterApp;
/// jsFlutter引擎
@property (nonatomic, strong) MXJSFlutterEngine *jsFlutterEngine;

@end

/// 用于JS侧调用方法
@implementation MXJSAPI

- (instancetype)initWithJSEngine:(MXJSEngine *)jsEngine context:(JSContext *)context {
    if (self = [super init]) {
        self.jsEngine = jsEngine;
        self.context = context;
    }
    return self;
}

#pragma mark - MXJSAPIExport

- (JSValue *)require:(NSString *)filePath {
    NSString *prefix = @"./";
    if ([filePath hasPrefix:prefix]) {
        filePath = [filePath substringFromIndex:prefix.length];
    }

    NSString *absolutePath = [self.jsEngine calcRequireJSAbsolutePath:filePath];

    JSModule *module = nil;
    if (absolutePath.length != 0) {
        module = [JSModule require:filePath fullModulePath:absolutePath inContext:self.context];
        if (!module) {
            [[JSContext currentContext] evaluateScript:@"throw 'not found'"];
            return [JSValue valueWithUndefinedInContext:[JSContext currentContext]];
        }
    }

    return module.exports;
}

/// dart侧打印
/// @param string 打印内容
- (void)dartPrint:(NSString *)string {
    NSLog(@"%@", string);
}

/// native侧打印
/// @param string 打印内容
- (void)nativePrint:(NSString *)string {
    NSLog(@"%@", string);
}

/// 调用Flutter方法。使用FFI Port
/// @param callJSONStr json字符串
- (NSString *)mxJSBridgeInvokeFlutterFFIPort:(NSString *)callJSONStr {
    // Native 透传 callJSONStr 不做任何解析
    char *jsonString = (char *)callJSONStr.UTF8String;
    char *result = NativeCallFlutterFunctionSync(jsonString);
    NSString *resultString = [NSString stringWithUTF8String:result];
    // 手动释放内存
    free(result);
    return resultString;
}

/// 调用Flutter方法。使用Common Channel
/// @param callJSONStr json字符串
/// @param function js回调
- (void)mxJSBridgeInvokeFlutterCommonChannel:(NSString *)callJSONStr function:(JSValue *)function {
    // Native 透传callJSONStr 不做任何解析
    [self.jsFlutterEngine invokeFlutterCommonChannel:callJSONStr
                                            callback:^(id _Nullable result) {
                                                // callbak 透传result 不做任何解析
                                                if (result) {
                                                    [function callWithArguments:@[ result ]];
                                                } else {
                                                    [function callWithArguments:@[]];
                                                }
                                            }];
}

/// js通过Method Channel调用方法
/// @param channelName channel名称
/// @param methodName method名称
/// @param params 参数
/// @param function js回调
- (void)mxJSBridgeMethodChannelInvokeMethod:(NSString *)channelName
                                 methodName:(NSString *)methodName
                                     params:(JSValue *)params
                                   function:(JSValue *)function {
    // Native 透传callJSONStr 不做任何解析
    [self.jsFlutterEngine callFlutterMethodChannelInvoke:channelName
                                              methodName:methodName
                                                  params:[params toObject]
                                                callback:^(id _Nullable result) {
                                                    if (result) {
                                                        [function callWithArguments:@[ result ]];
                                                    } else {
                                                        [function callWithArguments:@[]];
                                                    }
                                                }];
}

/// 设置Method Channle的handler
/// @param channelName channel名称
/// @param handler 回调
- (void)mxJSBridgeMethodChannelSetMethodCallHandler:(NSString *)channelName handler:(JSValue *)handler {
    // 保存JS回调
    if (channelName.length > 0 && handler) {
        [self.jsEngine.jsCallbackCache setObject:handler forKey:channelName];
    }
}

/// 设置EventChannelReceiveBroadcastStreamListen
/// @param channelName channel名称
/// @param streamParam stream参数
/// @param onData onData回调
/// @param onError onError回调
/// @param onDone onDone回调
/// @param cancelOnError cancelOnError回调
- (void)mxJSBridgeEventChannelReceiveBroadcastStreamListen:(NSString *)channelName
                                               streamParam:(NSString *)streamParam
                                                    onData:(JSValue *)onData
                                                   onError:(JSValue *)onError
                                                    onDone:(JSValue *)onDone
                                             cancelOnError:(NSNumber *)cancelOnError {
    NSString *onDataId = [self.jsEngine storeJsCallback:onData];
    NSString *onErrorId = [self.jsEngine storeJsCallback:onError];
    NSString *onDoneId = [self.jsEngine storeJsCallback:onDone];

    [self.jsFlutterEngine callFlutterEventChannelReceiveBroadcastStreamListenInvoke:channelName
                                                                        streamParam:streamParam
                                                                           onDataId:onDataId
                                                                          onErrorId:onErrorId
                                                                           onDoneId:onDoneId
                                                                      cancelOnError:cancelOnError];
}

/// 设置当前运行的JSApp
/// @param jsAppObj app实例
- (void)jsAPISetCurrentJSApp:(JSValue *)jsAppObj {
    self.jsEngine.jsAppObj = jsAppObj;
}

/// 调用Flutter侧reloadApp方法
/// @param jsAppObj app实例
/// @param data 参数
- (void)jsAPICallFlutterReloadApp:(JSValue *)jsAppObj widgetData:(NSString *)data {
    self.jsEngine.jsAppObj = jsAppObj;

    [self.jsFlutterEngine callFlutterReloadAppWithJSWidgetData:data];
}

/// 调用Flutter通道方法
/// @param method 方法名
/// @param arguments 参数
- (void)callFlutterWidgetChannelWithMethodName:(NSString *)method arguments:(id)arguments {
    if ([method isEqualToString:@"rebuild"]) {
        [self.currentJSFlutterApp.jsFlutterAppRebuildChannel sendMessage:arguments];
    } else if ([method isEqualToString:@"navigatorPush"]) {
        [self.currentJSFlutterApp.jsFlutterAppNavigatorPushChannel sendMessage:arguments];
    } else {
        [self.currentJSFlutterApp.jsFlutterAppChannel invokeMethod:method arguments:arguments];
    }
}

#pragma mark - Getters

- (MXJSFlutterApp *)currentJSFlutterApp {
    return self.jsFlutterEngine.currentApp;
}

- (MXJSFlutterEngine *)jsFlutterEngine {
    return self.jsEngine.jsFlutterEngine;
}

@end
