//
//  MXJSAppProxy.m
//  Runner
//
//  Created by soapyang on 2018/12/24.
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import "MXJSFlutterApp.h"
#import "MXJSFlutterDefines.h"
#import <Flutter/Flutter.h>
#import "MXJSEngine.h"
#import "MXJSFlutterEngine.h"
#import "MXJSBridge.h"

@interface MXJSFlutterApp ()

@property (nonatomic, assign) NSUInteger index;
@property (nonatomic, strong) FlutterMethodChannel* jsFlutterAppChannel;

@property (nonatomic) BOOL isJSAPPRun;
@property (nonatomic, strong) NSMutableArray<FlutterMethodCall*> *callJSMethodQueue;

@end

@implementation MXJSFlutterApp

- (instancetype)initWithAppName:(NSString*)appName engine:(MXJSFlutterEngine*)jsFlutterEngine appRootPath:(NSString*)appRootPath
{
    if (self = [super init])
    {
        self.isJSAPPRun = NO;
        self.appName = appName;
        self.jsFlutterEngine = jsFlutterEngine;
        self.appRootPath = appRootPath;
        
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
    [self unsetup];
    
    self.jsEngine = [[MXJSEngine alloc] init];
    self.jsEngine.flutterEngine = self.jsFlutterEngine.flutterEngine;
    self.jsEngine.jsFlutterEngine = self.jsFlutterEngine;
    self.jsEngine.jsFlutterEngine.jsEngine = self.jsEngine;
    
    //调试时，指向本地路径，可以热重载
    NSString *jsBasePath = @"";
    
    if (jsBasePath.length == 0) {
        jsBasePath = [[NSBundle mainBundle] bundlePath];
    }
    
    //JSFlutter JS运行库搜索路径
    NSString *jsFlutterFrameworkDir = [JSFLUTTER_SRC_BASE_DIR stringByAppendingPathComponent:JSFLUTTER_FRAMEWORK_DIR];
    [self.jsEngine addSearchDir:jsFlutterFrameworkDir];
    
    //app业务代码搜索路径
    [self.jsEngine addSearchDir:self.appRootPath];
    //__weak MXJSFlutterEngine *weakSelf = self;
    
    //app业务代码搜索路径 TODO:fixme
    [self.jsEngine addSearchDir:[self.appRootPath stringByAppendingPathComponent:@"dart_js"]];
    
    //JSFlutter Dart JS运行库搜索路径
    NSString *dartJsFlutterFrameworkDir = [JSFLUTTER_SRC_BASE_DIR stringByAppendingPathComponent:JSFLUTTER_DART_FRAMEWORK_DIR];
    [self.jsEngine addSearchDir:dartJsFlutterFrameworkDir];
    
    NSString *js_basic_lib_Path = [jsFlutterFrameworkDir stringByAppendingPathComponent:@"js_basic_lib.js"];
    [self.jsExecutor executeScriptPath:js_basic_lib_Path onComplete:^(NSError *error) {
        
    }];
}

- (void)unsetup
{
    
}

- (void)setupChannel
{
    self.jsFlutterAppChannel = [FlutterMethodChannel
                                methodChannelWithName:@"js_flutter.js_flutter_app_channel"
                                binaryMessenger:_jsFlutterEngine.flutterEngine.binaryMessenger];
    
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

- (void)runApp
{
    
    self.isJSAPPRun = NO;
    MXJSFlutterLog(@"MXJSFlutterApp : runApp：%@",self.appName);
    
    __weak MXJSFlutterApp *weakSelf = self;
    [self.jsExecutor executeMXJSBlockOnJSThread:^(MXJSExecutor *executor) {
        MXJSFlutterApp *strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }
        
        executor.jsContext[@"MXNativeJSFlutterApp"] = strongSelf;
        
        //把JSI 注册到MXNativeJSFlutterApp中
        [[MXJSBridge shareInstance] registerModules: self jsAPPValueBridge:executor.jsContext[@"MXNativeJSFlutterApp"] ];
        
        NSString *mainJS = [strongSelf.appRootPath stringByAppendingPathComponent:@"main.js"];
        
        [executor executeScriptPath:mainJS onComplete:^(NSError *error) {
            
            MXJSFlutterLog(@"MXJSFlutter : runApp error:%@",error);
            
            [executor invokeMethod:@"main" args:@[] callback:^(JSValue *result, NSError *error) {
                
                strongSelf.isJSAPPRun = YES;
                NSLog(@"MXJSFlutter : call main error:%@",error);
                
                [strongSelf callJSMethodCallQueqe];
            }];
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


//MARK: - js -> native -> flutter
//--------------------------------------------

- (void)jsAPISetCurrentJSApp:(JSValue*)jsAppObj
{
    self.jsAppObj = jsAppObj;
}

- (void)jsAPICallFlutterReloadApp:(JSValue*)jsAppObj  widgetData:(NSString*)data
{
    self.jsAppObj = jsAppObj;
    
    [self.jsFlutterEngine callFlutterReloadAppWithJSWidgetData:data];
}

- (void)callFlutterWidgetChannelWithMethodName:(NSString*)method arguments:(id)arguments
{
    if (arguments && [arguments isKindOfClass:[NSMutableDictionary class]]) {
        arguments[@"index"] = @(++self.index);
        NSLog(@"MXTimeStamp Native Beign %@ %lld index=%lu",method, (long long)([[NSDate date] timeIntervalSince1970] * 1000),(unsigned long)self.index);
    }
    [self.jsFlutterAppChannel invokeMethod:method arguments:arguments];
}

@end

