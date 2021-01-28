//
//  MXJSFlutterEngine.m
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/22.
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

#import "MXJSFlutterEngine.h"
#import "JSModule.h"
#import "MXFlutterPlugin.h"
#import "MXJSEngine.h"
#import "MXJSFlutterDefines.h"
#import "MXCommon.h"

@interface MXJSFlutterEngine ()

/// 引擎Method Channel
@property (nonatomic, strong) FlutterMethodChannel *engineMethodChannel;
/// FlutterCommonBasic通道
@property (nonatomic, strong) FlutterBasicMessageChannel *jsFlutterCommonBasicChannel;
/// 调用队列
@property (nonatomic, strong) NSMutableArray<FlutterMethodCall *> *callFlutterQueue;

@end

/*
 *mxflutter API
 *MXJSFlutterEngine
 *负责Flutter/Native/JS 三方衔接
 *管理FluterJS代码
 */
@implementation MXJSFlutterEngine

- (instancetype)initWithFlutterMessager:(NSObject<FlutterBinaryMessenger> *)binaryMessenger {
    if (self = [super init]) {
        self.binaryMessenger = binaryMessenger;
        [self setup];
    }
    return self;
}

- (void)setup {
    self.callFlutterQueue = [NSMutableArray arrayWithCapacity:2];
    [self setupChannel];
}

- (void)dispose {
}

- (void)setupChannel {
    self.engineMethodChannel = [FlutterMethodChannel methodChannelWithName:@"js_flutter.flutter_main_channel" binaryMessenger:self.binaryMessenger];

    __weak MXJSFlutterEngine *weakSelf = self;
    [self.engineMethodChannel setMethodCallHandler:^(FlutterMethodCall *_Nonnull call, FlutterResult _Nonnull result) {
        __strong MXJSFlutterEngine *strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }

        if ([call.method isEqualToString:@"callNativeRunJSApp"]) {
            [strongSelf callNativeRunJSApp:call.arguments];
        } else if ([call.method isEqualToString:@"callJsCallbackFunction"]) {
            [strongSelf callJsCallBackFunction:call.arguments];
        } else if ([call.method isEqualToString:@"mxLog"]) {
            NSLog(@"%@", call.arguments);
        }
    }];

    // js <===bridge===> flutter common channel
    self.jsFlutterCommonBasicChannel = [FlutterBasicMessageChannel messageChannelWithName:@"mxflutter.mxflutter_common_basic_channel"
                                                                          binaryMessenger:self.binaryMessenger
                                                                                    codec:[FlutterStringCodec sharedInstance]];

    [self.jsFlutterCommonBasicChannel setMessageHandler:^(id _Nullable message, FlutterReply _Nonnull callback) {
        __strong MXJSFlutterEngine *strongSelf = weakSelf;

        [strongSelf.currentApp.jsEngine.jsExecutor invokeMXJSAPIMethod:@"mxfJSBridgeInvokeJSCommonChannel"
                                                       args:@[ message ]
                                                   callback:^(JSValue *result, NSError *error) {
                                                       callback(result.toString);
                                                   }];
    }];
}


- (void)callJsCallBackFunction:(id)arguments {
    NSDictionary *argsMap = arguments;
    NSString *callbackId = argsMap[@"callbackId"];
    NSString *param = argsMap[@"param"];

    [self.currentApp.jsEngine callJSCallbackFunction:callbackId param:param];
}

// MARK: - flutter -> Native
//由Flutter 代码启动JSApp。 可以用在先显示Dart页面，然后路由调转到JS页面
//启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
- (void)callNativeRunJSApp:(id)arguments {
    NSDictionary *argsMap = arguments;
    NSString *jsAppPath = argsMap[@"jsAppPath"];

    if (jsAppPath.length == 0) {
        jsAppPath = mxflutterJSBundleDefaultPath();
    }

    NSDictionary *flutterAppEnvironmentInfo = argsMap[@"flutterAppEnvironmentInfo"];
    [self runAppWithPath:jsAppPath flutterAppEnvironmentInfo:flutterAppEnvironmentInfo];
}

// MARK: - native -> flutter

// 调用Flutter切换到JSWidget，显示JS渲染的内容
- (void)callFlutterReloadAppWithJSWidgetData:(NSString *)widgetData {
    [self callFlutterReloadAppWithRouteName:@"MXJSWidget" widgetData:widgetData];
}

- (void)callFlutterReloadAppWithRouteName:(NSString *)routeName widgetData:(NSString *)widgetData {
    routeName = routeName ? routeName : @"";
    widgetData = widgetData ? widgetData : @"";

    NSMutableDictionary *arguments = [[NSMutableDictionary alloc] init];
    if (routeName) {
        [arguments setObject:routeName forKey:@"routeName"];
    }
    if (widgetData) {
        [arguments setObject:widgetData forKey:@"widgetData"];
    }
    FlutterMethodCall *call = [FlutterMethodCall methodCallWithMethodName:@"reloadApp" arguments:arguments];

    [self.engineMethodChannel invokeMethod:call.method arguments:call.arguments];
}

- (void)invokeFlutterRemoveMirrorObjsRef:(NSArray *)mirrorIDArray {
    [self.engineMethodChannel invokeMethod:@"mxfJSBridgeRemoveMirrorObjsRef" arguments:mirrorIDArray];
}

- (void)callJSMethodCallHandler:(NSString *)channelName methodCall:(FlutterMethodCall *)methodCall callback:(void (^)(id _Nullable result))callback {
    [self.currentApp.jsEngine callJSCallbackFunctionWithChannelName:channelName methodCall:methodCall callback:callback];
}

// MARK: - JSI->Native->Flutter
// JSI->Native->Flutter 通用通道
- (void)invokeFlutterCommonChannel:(NSString *)argumentsJSONStr callback:(void (^)(id _Nullable result))callback {
    [self.jsFlutterCommonBasicChannel sendMessage:argumentsJSONStr
                                            reply:^(id _Nullable reply) {
                                                if (callback) {
                                                    callback(reply);
                                                }
                                            }];
}

- (void)callFlutterMethodChannelInvoke:(NSString *)channelName
                            methodName:(NSString *)methodName
                                params:(NSDictionary *)params
                              callback:(void (^)(id _Nullable result))callback {
    NSMutableDictionary *arguments = [[NSMutableDictionary alloc] init];
    if (channelName) {
        [arguments setObject:channelName forKey:@"channelName"];
    }
    if (methodName) {
        [arguments setObject:methodName forKey:@"methodName"];
    }
    if (params) {
        [arguments setObject:params forKey:@"params"];
    }
    FlutterMethodCall *call = [FlutterMethodCall methodCallWithMethodName:@"mxflutterBridgeMethodChannelInvoke" arguments:arguments];

    [self.engineMethodChannel invokeMethod:call.method
                                 arguments:call.arguments
                                    result:^(id _Nullable result) {
                                        if (callback) {
                                            callback(result);
                                        }
                                    }];
}

- (void)callFlutterEventChannelReceiveBroadcastStreamListenInvoke:(NSString *)channelName
                                                      streamParam:(NSString *)streamParam
                                                         onDataId:(NSString *)onDataId
                                                        onErrorId:(NSString *)onErrorId
                                                         onDoneId:(NSString *)onDoneId
                                                    cancelOnError:(NSNumber *)cancelOnError

{
    if ([streamParam isEqualToString:@"null"]) {
        streamParam = nil;
    }

    NSMutableDictionary *arguments = [[NSMutableDictionary alloc] init];
    if (channelName) {
        [arguments setObject:channelName forKey:@"channelName"];
    }
    if (streamParam) {
        [arguments setObject:streamParam forKey:@"streamParam"];
    }
    if (onDataId) {
        [arguments setObject:onDataId forKey:@"onDataId"];
    }
    if (onErrorId) {
        [arguments setObject:onErrorId forKey:@"onErrorId"];
    }
    if (onErrorId) {
        [arguments setObject:onErrorId forKey:@"onErrorId"];
    }
    if (cancelOnError) {
        [arguments setObject:cancelOnError forKey:@"cancelOnError"];
    }
    FlutterMethodCall *call = [FlutterMethodCall methodCallWithMethodName:@"mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke"
                                                                arguments:arguments];

    [self.engineMethodChannel invokeMethod:call.method arguments:call.arguments];
}

- (void)runAppWithPath:(NSString *)jsAppPath flutterAppEnvironmentInfo:(id)flutterAppEnvironmentInfo {
    //退出原来的APP
    if (self.currentApp) {
        [self.currentApp exitApp];
        self.currentApp = nil;
    }

    [JSModule clearModuleCache];
    NSString *appRootPath = jsAppPath;
    self.currentApp = [[MXJSFlutterApp alloc] initWithAppPath:appRootPath engine:self];

    [self.currentApp runApp:flutterAppEnvironmentInfo];
}

@end
