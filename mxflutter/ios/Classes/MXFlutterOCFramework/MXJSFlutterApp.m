//
//  MXJSAppProxy.m
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/24.
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

#import "MXJSFlutterApp.h"
#import "MXJSFlutterDefines.h"
#import "MXJSEngine.h"
#import "MXJSFlutterEngine.h"
#import "MXJSBridge.h"
#import "MXCommon.h"

@interface MXJSFlutterApp ()

/// app通道
@property (nonatomic, strong) FlutterMethodChannel *jsFlutterAppChannel;
/// rebuild通道
@property (nonatomic, strong) FlutterBasicMessageChannel *jsFlutterAppRebuildChannel;
/// push页面通道
@property (nonatomic, strong) FlutterBasicMessageChannel *jsFlutterAppNavigatorPushChannel;

/// app是否已经执行
@property (nonatomic) BOOL isJSAPPRun;
/// 调用js方法队列
@property (nonatomic, strong) NSMutableArray<FlutterMethodCall *> *callJSMethodQueue;

/// mx框架native侧加载main.js耗时
@property (nonatomic, assign) NSTimeInterval mxNativeJSLoadCost;

@end

/// JSFlutterApp
@implementation MXJSFlutterApp

- (instancetype)initWithAppPath:(NSString *)appRootPath engine:(MXJSFlutterEngine *)jsFlutterEngine {
    if (self = [super init]) {
        self.isJSAPPRun = NO;
        self.jsFlutterEngine = jsFlutterEngine;
        self.appRootPath = appRootPath;

        self.callJSMethodQueue = [[NSMutableArray alloc] initWithCapacity:1];

        [self setupChannel];
        [self setupJSEngine];
    }
    return self;
}

- (void)setupJSEngine {
#if DEBUG
    // Debug下，清理 MXJSEngine Instance，重新创建
    [MXJSEngine releasePreloadInstance];
#endif

    if ([MXJSEngine preloadInstance]) {
        self.jsEngine = [MXJSEngine preloadInstance];
    } else {
        self.jsEngine = [[MXJSEngine alloc] init];
    }

    self.jsEngine.jsFlutterEngine = self.jsFlutterEngine;
    // app业务代码搜索路径
    [self.jsEngine addSearchDir:self.appRootPath];
}

- (void)setupChannel {
    self.jsFlutterAppChannel = [FlutterMethodChannel methodChannelWithName:@"js_flutter.js_flutter_app_channel"
                                                           binaryMessenger:_jsFlutterEngine.binaryMessenger];

    // Rebuild方法采用BasicMessageChannel
    self.jsFlutterAppRebuildChannel = [FlutterBasicMessageChannel messageChannelWithName:@"js_flutter.js_flutter_app_channel.rebuild"
                                                                         binaryMessenger:_jsFlutterEngine.binaryMessenger
                                                                                   codec:[FlutterStringCodec sharedInstance]];

    // navigator_push方法采用BasicMessageChannel
    self.jsFlutterAppNavigatorPushChannel = [FlutterBasicMessageChannel messageChannelWithName:@"js_flutter.js_flutter_app_channel.navigator_push"
                                                                               binaryMessenger:_jsFlutterEngine.binaryMessenger
                                                                                         codec:[FlutterStringCodec sharedInstance]];

    __weak MXJSFlutterApp *weakSelf = self;

    [self.jsFlutterAppChannel setMethodCallHandler:^(FlutterMethodCall *_Nonnull call, FlutterResult _Nonnull flutterResult) {
        MXJSFlutterApp *strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }

        if ([call.method isEqualToString:@"callJS"]) {
            MXJSFlutterLog(@"MXJSFlutter : jsFlutterAppChannel callJS:%@", call.arguments[@"method"]);

            if (!strongSelf.isJSAPPRun) {
                MXJSFlutterLog(@"MXJSFlutter : jsFlutterAppChannel callJS:%@ JSAPP not running", call.arguments[@"method"]);

                [strongSelf.callJSMethodQueue addObject:call];

                return;
            }

            [strongSelf.jsExecutor invokeJSValue:strongSelf.jsEngine.jsAppObj
                                          method:@"nativeCall"
                                            args:@[ call.arguments ]
                                        callback:^(JSValue *result, NSError *error) {
                                            if (!error) {
                                                flutterResult(result.toString);
                                            }
                                        }];
        }
    }];
}

- (void)runApp:(id)flutterAppEnvironmentInfo {
    self.isJSAPPRun = NO;
    MXJSFlutterLog(@"MXJSFlutterApp : runApp：%@", self.appRootPath);

    if (self.jsEngine.isJSEngineSetup) {
        self.isJSAPPRun = YES;

        if (flutterAppEnvironmentInfo) {
            self.jsExecutor.jsContext[@"MXJSAPI"][@"mx_flutterAppEnvironmentInfo"] = flutterAppEnvironmentInfo;
        }

        self.jsExecutor.jsContext[@"MXJSAPI"][@"isFlutterAppEngineSetup"] = @(YES);

        //把JSI 注册到MXNativeJSFlutterApp中
        [[MXJSBridge shareInstance] registerModules:self jsAPPValueBridge:self.jsExecutor.jsContext[@"MXNativeJSFlutterApp"]];

        [self callJSMethodCallQueqe];

        // 通知Flutter侧，JS引擎初始化成功
        [self.jsFlutterEngine.engineMethodChannel invokeMethod:MXFLUTTER_JSENGINE_INIT_SUCCESS_HANDLER
                                                     arguments:@{ @"success" : @(YES) }
                                                        result:NULL];

        // 通知JS侧，重置mirror数据
        NSDictionary *args = @{ @"method" : @"invokeJSMirrorResetData" };
        NSData *argsJsonData = [NSJSONSerialization dataWithJSONObject:args options:0 error:NULL];
        NSString *argsJsonStr = [[NSString alloc] initWithData:argsJsonData encoding:NSUTF8StringEncoding];
        [self.jsExecutor invokeMXJSAPIMethod:@"mxfJSBridgeInvokeJSCommonChannel"
                                        args:@[ argsJsonStr ]
                                    callback:^(JSValue *result, NSError *error) {

                                    }];
        return;
    }

    __weak MXJSFlutterApp *weakSelf = self;
    [self.jsExecutor executeMXJSBlockOnJSThread:^(MXJSExecutor *executor) {
        MXJSFlutterApp *strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }

        if (flutterAppEnvironmentInfo) {
            executor.jsContext[@"MXJSAPI"][@"mx_flutterAppEnvironmentInfo"] = flutterAppEnvironmentInfo;
        }

        executor.jsContext[@"MXJSAPI"][@"isFlutterAppEngineSetup"] = @(YES);

        //把JSI 注册到MXNativeJSFlutterApp中
        [[MXJSBridge shareInstance] registerModules:strongSelf jsAPPValueBridge:executor.jsContext[@"MXNativeJSFlutterApp"]];

        // 获取main.js地址
        NSString *mainJS = [strongSelf searchEntryJS];

        // 框架加载main.js开始时间
        NSTimeInterval jsLoadStartTime = [[NSDate date] timeIntervalSince1970] * 1000;

        [executor executeScriptPath:mainJS
                         onComplete:^(NSError *error) {
                             if (error) {
                                 MXJSFlutterLog(@"MXJSFlutter : runApp error: %@", error);

                                 // 给到业务侧异常信息
                                 [strongSelf.jsFlutterEngine.engineMethodChannel invokeMethod:MXFLUTTER_JSEXCEPTION_HANDLER
                                                                                    arguments:@{
                                                                                        @"jsFileType" : @(MXFlutterJSFileType_Main),
                                                                                        @"errorMsg" : error.description
                                                                                    }
                                                                                       result:NULL];
                                 return;
                             }

                             strongSelf.isJSAPPRun = YES;
                             strongSelf.jsEngine.isJSEngineSetup = YES;
                             [strongSelf callJSMethodCallQueqe];

                             // 框架加载main.js结束时间
                             NSTimeInterval jsLoadEndTime = [[NSDate date] timeIntervalSince1970] * 1000;
                             strongSelf.mxNativeJSLoadCost = jsLoadEndTime - jsLoadStartTime;

                             // 通知Flutter侧，JS引擎初始化成功。
                             [strongSelf.jsFlutterEngine.engineMethodChannel invokeMethod:MXFLUTTER_JSENGINE_INIT_SUCCESS_HANDLER
                                                                                arguments:@{
                                                                                    @"success" : @(YES)
                                                                                }
                                                                                   result:NULL];

                             // 通知JS侧，框架加载时间
                             [strongSelf callJSInitProfileInfo];
                         }];
    }];
}

- (void)callJSMethodCallQueqe {
    for (FlutterMethodCall *call in self.callJSMethodQueue) {
        [self.jsExecutor invokeJSValue:self.jsEngine.jsAppObj
                                method:@"nativeCall"
                                  args:@[ call.arguments ]
                              callback:^(JSValue *result, NSError *error) {
                                  //             if (!error)
                                  //             {
                                  //                 flutterResult(result.toString);
                                  //             }
                              }];
    }

    [self.callJSMethodQueue removeAllObjects];
}

- (void)exitApp {
    [self.jsEngine dispose];
    self.jsEngine = nil;
}

- (MXJSExecutor *)jsExecutor {
    return self.jsEngine.jsExecutor;
}

- (JSContext *)mainJSContext {
    return self.jsEngine.jsExecutor.jsContext;
}

- (void)invokeJSValue:(JSValue *)jsValue method:(NSString *)method args:(NSArray *)args callback:(MXJSValueCallback)callback {
    [self.jsEngine.jsExecutor invokeJSValue:jsValue method:method args:args callback:callback];
}

- (void)executeBlockOnJSThread:(dispatch_block_t)block {
    [self.jsEngine.jsExecutor executeBlockOnJSThread:block];
}

- (void)callJSInitProfileInfo {
    NSDictionary *args = @{ @"method" : @"nativeCallInitProfileInfo", @"arguments" : @ { @"mxNativeJSLoadCost" : @(self.mxNativeJSLoadCost) } };
    [self.jsExecutor invokeJSValue:self.jsEngine.jsAppObj
                            method:@"nativeCall"
                              args:@[ args ]
                          callback:^(JSValue *result, NSError *error) {

                          }];
}

- (NSString *)searchEntryJS {
    // 先读 RunJSApp传入的JS文件路径里是否有main.js。如果没有读取拷贝目录地址的main.js
    NSString *appMainJS = [self.appRootPath stringByAppendingPathComponent:@"main/main.js"];

    if ([[NSFileManager defaultManager] fileExistsAtPath:appMainJS]) {
        return appMainJS;
    }

#if DEBUG
    appMainJS = [self.appRootPath stringByAppendingPathComponent:@"main.js"];
    if ([[NSFileManager defaultManager] fileExistsAtPath:appMainJS]) {
        return appMainJS;
    }
#endif

    // Documents(此名称和zip包拷贝逻辑相关)/mxflutter_js_bundle/main/main.js
    // 一般用于开发调试。正式运行到这里，需查找原因！！！
    NSString *pkgMainJS = [mxflutterJSBundleDefaultPath() stringByAppendingPathComponent:@"main/main.js"];

    if (![[NSFileManager defaultManager] fileExistsAtPath:pkgMainJS]) {
        MXFLogError(@"MainJS fileNotExistsAtPath: AppPath: %@ or PkgPath: %@", appMainJS, pkgMainJS);
    }

    return pkgMainJS;
}

@end
