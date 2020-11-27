//
//  MXJSAppProxy.m
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/24.
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import "MXJSFlutterApp.h"
#import "MXJSFlutterDefines.h"
#import "MXJSEngine.h"
#import "MXJSFlutterEngine.h"
#import "MXJSBridge.h"

@interface MXJSFlutterApp ()

@property (nonatomic, assign) NSUInteger index;
@property (nonatomic, strong) FlutterMethodChannel* jsFlutterAppChannel;
@property (nonatomic, strong) FlutterBasicMessageChannel* jsFlutterAppRebuildChannel;
@property (nonatomic, strong) FlutterBasicMessageChannel* jsFlutterAppNavigatorPushChannel;

@property (nonatomic) BOOL isJSAPPRun;
@property (nonatomic, strong) NSMutableArray<FlutterMethodCall*> *callJSMethodQueue;

@property (nonatomic, strong) NSArray* jsAppSearchPathList;

/// mx框架native侧加载main.js耗时
@property (nonatomic, assign) NSTimeInterval mxNativeJSLoadCost;

@end

@implementation MXJSFlutterApp

- (instancetype)initWithAppPath:(NSString*)appRootPath jsAppSearchPathList:(NSArray*)pathArray engine:(MXJSFlutterEngine*)jsFlutterEngine
{
    if (self = [super init])
    {
        self.isJSAPPRun = NO;
        self.appName = appRootPath;
        self.jsFlutterEngine = jsFlutterEngine;
        self.appRootPath = appRootPath;
        self.jsAppSearchPathList = pathArray;
        
        self.callJSMethodQueue = [[NSMutableArray alloc] initWithCapacity:1];
        
        [self setupChannel];
        [self setupJSEngine];
    }
    return self;
}

- (void)dealloc
{
    MXJSFlutterLog(@"appName%@",self.appName);
}

- (void)setupJSEngine
{
    //#define JSFLUTTER_DART_FRAMEWORK_DIR  @"lib/mxflutter_framework/mxf_js_framework/dart_js_framework"
    
    self.jsEngine = [[MXJSEngine alloc] init];
    self.jsEngine.jsFlutterEngine = self.jsFlutterEngine;
    self.jsEngine.jsFlutterEngine.jsEngine = self.jsEngine;
    
    //调试时，指向本地路径，可以热重载
    NSString *jsBasePath = @"";
    
    if (jsBasePath.length == 0) {
        jsBasePath = [[NSBundle mainBundle] bundlePath];
    }
    
    //MXFlutter JS运行库搜索路径
    NSString *jsFrameworkPath = [self.jsFlutterEngine jsFrameworkPath];
    
    MXFLogInfo(@"JSEngine:jsFrameworkPath:%@",jsFrameworkPath);
    
    [self.jsEngine addSearchDir:jsFrameworkPath];

    //app业务代码搜索路径 ，默认//Runner.app/Frameworks/App.framework/flutter_assets/mxflutter_js_bundle/
    [self.jsEngine addSearchDir:self.appRootPath];

    for (NSString *searchPath in self.jsAppSearchPathList) {
         [self.jsEngine addSearchDir:searchPath];
    }
    
}


- (void)setupChannel
{
    self.jsFlutterAppChannel = [FlutterMethodChannel
                                methodChannelWithName:@"js_flutter.js_flutter_app_channel"
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
    
    [self.jsFlutterAppChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull flutterResult) {
        
        MXJSFlutterApp *strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }
        
        if ([call.method isEqualToString:@"callJS"]) {
            
            MXJSFlutterLog(@"MXJSFlutter : jsFlutterAppChannel callJS:%@",call.arguments[@"method"]);
            
            if (!strongSelf.isJSAPPRun) {
                
                MXJSFlutterLog(@"MXJSFlutter : jsFlutterAppChannel callJS:%@ JSAPP not running",call.arguments[@"method"]);
                
                [strongSelf.callJSMethodQueue addObject:call];
                
                return;
            }
            
            [strongSelf.jsExecutor invokeJSValue:strongSelf.jsAppObj method:@"nativeCall" args:@[call.arguments] callback:^(JSValue *result, NSError *error) {
                if (!error)
                {
                    flutterResult(result.toString);
                }
            }];
        }
    }];
}

- (void)runApp:(id)flutterAppEnvironmentInfo
{
    
    self.isJSAPPRun = NO;
    MXJSFlutterLog(@"MXJSFlutterApp : runApp：%@",self.appName);
    
    __weak MXJSFlutterApp *weakSelf = self;
    [self.jsExecutor executeMXJSBlockOnJSThread:^(MXJSExecutor *executor) {
        MXJSFlutterApp *strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }
        
        if (flutterAppEnvironmentInfo) {
            executor.jsContext[@"MXJSAPI"][@"mx_flutterAppEnvironmentInfo"] = flutterAppEnvironmentInfo;
        }
        
        //把JSI 注册到MXNativeJSFlutterApp中
        [[MXJSBridge shareInstance] registerModules: self jsAPPValueBridge:executor.jsContext[@"MXNativeJSFlutterApp"] ];
        
        NSString *mainJS = [strongSelf.appRootPath stringByAppendingPathComponent:@"main.js"];
        
        // 框架加载main.js开始时间
        NSTimeInterval jsLoadStartTime = [[NSDate date] timeIntervalSince1970] * 1000;
        
        [executor executeScriptPath:mainJS onComplete:^(NSError *error) {
            if (error) {
                MXJSFlutterLog(@"MXJSFlutter : runApp error: %@", error);
                
                // 给到业务侧异常信息
                [strongSelf.jsFlutterEngine.engineMethodChannel invokeMethod:MXFlutterJSExceptionHandler
                                                                   arguments:@{@"jsFileType": @(MXFlutterJSFileType_Main),
                                                                               @"errorMsg": error.description}
                                                                      result:NULL];
                return;
            }
            
            strongSelf.isJSAPPRun = YES;
            
            [strongSelf callJSMethodCallQueqe];
            
            // 框架加载main.js结束时间
            NSTimeInterval jsLoadEndTime = [[NSDate date] timeIntervalSince1970] * 1000;
            strongSelf.mxNativeJSLoadCost = jsLoadEndTime - jsLoadStartTime;
            
            // 通知JS侧，框架加载时间
            [strongSelf callJSInitProfileInfo];
        }];
        
    }];
}

- (void)callJSMethodCallQueqe{
    
    for (FlutterMethodCall *call in self.callJSMethodQueue) {
        [self.jsExecutor invokeJSValue:self.jsAppObj method:@"nativeCall" args:@[call.arguments] callback:^(JSValue *result, NSError *error) {
            //             if (!error)
            //             {
            //                 flutterResult(result.toString);
            //             }
        }];
    }
    
    [self.callJSMethodQueue removeAllObjects];
}

-(void)exitApp
{
    self.jsAppObj = nil;
    
    [self.jsEngine dispose];
    self.jsEngine = nil;
  
    
}

- (MXJSExecutor*)jsExecutor
{
    return self.jsEngine.jsExecutor;
}

- (JSContext*)mainJSContext
{
    return  self.jsEngine.jsExecutor.jsContext ;
}

- (void)invokeJSValue:(JSValue *)jsValue method:(NSString *)method args:(NSArray *)args callback:(MXJSValueCallback )callback
{
    [self.jsEngine.jsExecutor invokeJSValue:jsValue method:method args:args callback:callback];
}

- (void)executeBlockOnJSThread:(dispatch_block_t)block
{
    [self.jsEngine.jsExecutor executeBlockOnJSThread:block];
}

- (void)callJSInitProfileInfo {
    NSDictionary *args = @{@"method" : @"nativeCallInitProfileInfo",
                           @"arguments" : @{@"mxNativeJSLoadCost" : @(self.mxNativeJSLoadCost)}
                          };
    [self.jsExecutor invokeJSValue:self.jsAppObj method:@"nativeCall" args:@[args] callback:^(JSValue *result, NSError *error) {

    }];
}

@end

