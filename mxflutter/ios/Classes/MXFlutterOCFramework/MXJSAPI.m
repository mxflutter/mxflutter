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

@interface MXJSAPI()

@property (nonatomic, weak) MXJSEngine *jsEngine;
@property (nonatomic, strong) JSContext *context;
@property (nonatomic, strong) MXJSFlutterApp *currentJSFlutterApp;
@property (nonatomic, strong) MXJSFlutterEngine *jsFlutterEngine;

@end

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

- (void)dartPrint:(NSString *)string {
    NSLog(@"%@", string);
}

- (void)nativePrint:(NSString *)string {
    NSLog(@"%@", string);
}

- (void)mxJSBridgeInvokeFlutterCommonChannel:(NSString *)callJSONStr function:(JSValue *)function {
    //Native 透传callJSONStr 不做任何解析
    [self.jsFlutterEngine invokeFlutterCommonChannel:callJSONStr callback:^(id  _Nullable result) {
        //callbak 透传result 不做任何解析
        if (result) {
            [function callWithArguments:@[result]];
        } else {
            [function callWithArguments:@[]];
        }
    }];
}

- (void)mxJSBridgeMethodChannelInvokeMethod:(NSString *)channelName methodName:(NSString *)methodName params:(JSValue *)params function:(JSValue *)function {
    //Native 透传callJSONStr 不做任何解析
    [self.jsFlutterEngine callFlutterMethodChannelInvoke:channelName methodName:methodName params:[params toObject] callback:^(id  _Nullable result) {
        if (result) {
            [function callWithArguments:@[result]];
        } else {
            [function callWithArguments:@[]];
        }
    }];
}

- (void)mxJSBridgeMethodChannelSetMethodCallHandler:(NSString *)channelName handler:(JSValue *)handler {
    // 保存JS回调
    if (channelName.length > 0 && handler) {
        [self.jsEngine.jsCallbackCache setObject:handler forKey:channelName];
    }
}

- (void)mxJSBridgeEventChannelReceiveBroadcastStreamListen:(NSString *)channelName streamParam:(NSString *)streamParam onData:(JSValue *)onData onError:(JSValue *)onError onDone:(JSValue *)onDone cancelOnError:(NSNumber *)cancelOnError {
    NSString *onDataId = [self.jsEngine storeJsCallback:onData];
    NSString *onErrorId = [self.jsEngine storeJsCallback:onError];
    NSString *onDoneId = [self.jsEngine storeJsCallback:onDone];

    [self.jsFlutterEngine callFlutterEventChannelReceiveBroadcastStreamListenInvoke:channelName streamParam:streamParam onDataId:onDataId onErrorId:onErrorId onDoneId:onDoneId cancelOnError:cancelOnError];
}

- (void)jsAPISetCurrentJSApp:(JSValue *)jsAppObj {
    self.currentJSFlutterApp.jsAppObj = jsAppObj;
}

- (void)jsAPICallFlutterReloadApp:(JSValue *)jsAppObj  widgetData:(NSString *)data {
    self.currentJSFlutterApp.jsAppObj = jsAppObj;
    
    [self.jsFlutterEngine callFlutterReloadAppWithJSWidgetData:data];
}

- (void)callFlutterWidgetChannelWithMethodName:(NSString *)method arguments:(id)arguments {
    if ([method isEqualToString:@"rebuild"]) {
        [self.currentJSFlutterApp.jsFlutterAppRebuildChannel sendMessage:arguments];
    } else if([method isEqualToString:@"navigatorPush"]) {
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
