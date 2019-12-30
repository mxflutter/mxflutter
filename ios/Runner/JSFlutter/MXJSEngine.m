//
//  MXJSEngine.m
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import "MXJSEngine.h"
#import "MXJSFlutterDefines.h"
#import "MXJSFlutterEngine.h"
#import "JSModule.h"
#import <Flutter/Flutter.h>

@interface MXJSEngine()

@property (nonatomic, strong) JSModule *moduleLoader;
@property (nonatomic, strong) NSMutableArray *searchDirArray;
@property (nonatomic, strong) NSMutableDictionary *jsCallbackCache;

@end


@implementation MXJSEngine

- (instancetype)init
{
    if (self = [super init])
    {
        self.searchDirArray = [NSMutableArray array];
        self.moduleLoader = [[JSModule alloc] init];
        self.jsCallbackCache = [NSMutableDictionary dictionary];
        
        [self setup];
    }
    return self;
}

- (void)dealloc
{
    MXJSFlutterLog(@"dealloc ");
}

- (void)setup
{
    self.jsExecutor = [[MXJSExecutor alloc] init];
    
    __weak MXJSEngine *weakSelf = self;
    [self.jsExecutor executeMXJSBlockOnJSThread:^(MXJSExecutor *executor) {
        [self setupBasicJSRuntime:weakSelf context:executor.jsContext];
    }];
}

- (void)addSearchDir:(NSString*)dir
{
    if (nil == dir || [self.searchDirArray containsObject:dir]) {
        return;
    }
    
    [self.searchDirArray addObject:dir];
}

- (void)setupBasicJSRuntime:(MXJSEngine* )jsEngine context:(JSContext* )context
{
    __weak MXJSEngine *weakSelf = jsEngine;
    
    context.exceptionHandler = ^(JSContext *con, JSValue *exception) {
        MXJSFlutterLog(@"js context.exceptionHandler  %@", exception);
    };
    context[@"require"] = ^(NSString *filePath) {
        MXJSFlutterLog(@"require file:%@",filePath);
        
        NSString *prefix = @"./";
        if ([filePath hasPrefix:prefix]) {
            filePath = [filePath substringFromIndex:prefix.length];
        }
        
        NSString *absolutePath = @"";
        NSArray *extensions = @[@".js",@".ddc.js"];
        for(NSString *dir in weakSelf.searchDirArray) {
            for (NSString *extension in extensions) {
                NSString *absolutePathTemp = [dir stringByAppendingPathComponent:filePath];
                if (![filePath hasSuffix:@".js"]) {
                    absolutePathTemp = [NSString stringWithFormat:@"%@%@",absolutePathTemp,extension];
                }
                if ([[NSFileManager defaultManager] fileExistsAtPath:absolutePathTemp]) {
                    absolutePath = absolutePathTemp;
                    break;
                }
            }
            if (absolutePath.length > 0) {
                break;
            }
        }
        
        JSModule *module = [JSModule new];
        if (absolutePath.length != 0) {
            MXJSFlutterLog(@"require file:%@ found absolutePath=%@",filePath, absolutePath);
            module = [JSModule require:filePath fullModulePath:absolutePath inContext:context];
            if (!module) {
                [[JSContext currentContext] evaluateScript:@"throw 'not found'"];
                return [JSValue valueWithUndefinedInContext:[JSContext currentContext]];
            }
        }
        
        return module.exports;
    };
    
    //------Dart2Js支持------
    context[@"dartPrint"] = ^(NSString *string) {
        return NSLog(@"%@",string);
    };
    
    context[@"nativePrint"] = ^(NSString *string) {
        return NSLog(@"%@",string);
    };
    
    context[@"setTimeout"] = ^(JSValue* function, JSValue* timeout) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)([timeout toInt32] * NSEC_PER_MSEC)), dispatch_get_main_queue(), ^{
            [function callWithArguments:@[]];
        });
    };
    //------Dart2Js支持------
    
    //------Flutter Bridge------
    
    /**
    * @param channelName 通道名
    * @param methodName 方法名
    * @param params 参数
    * @param function 回调
    */
    context[@"mx_jsbridge_MethodChannel_invokeMethod"] = ^(NSString* channelName, NSString* methodName, JSValue* params, JSValue* function) {
        [self.jsFlutterEngine callFlutterMethodChannelInvoke:channelName methodName:methodName params:[params toDictionary] callback:^(id  _Nullable result) {
            if (result) {
                [function callWithArguments:@[result]];
            } else {
                [function callWithArguments:@[]];
            }
        }];
    };
    
    /**
    * @param channelName 通道名
    * @param streamParam receiveBroadcastStream参数
    * @param onData 回调
    * @param onError 回调
    * @param onDone 回调
    * @param cancelOnError 回调
    */
    context[@"mx_jsbridge_EventChannel_receiveBroadcastStream_listen"] = ^(NSString* channelName,
                                                                           NSString* streamParam,
                                                                           JSValue* onData,
                                                                           JSValue* onError,
                                                                           JSValue* onDone,
                                                                           NSNumber* cancelOnError) {
        NSString *onDataId = [self storeJsCallBack:onData];
        NSString *onErrorId = [self storeJsCallBack:onError];
        NSString *onDoneId = [self storeJsCallBack:onDone];

        [self.jsFlutterEngine callFlutterEventChannelReceiveBroadcastStreamListenInvoke:channelName streamParam:streamParam onDataId:onDataId onErrorId:onErrorId onDoneId:onDoneId cancelOnError:cancelOnError];
    };
    //------Flutter Bridge------
}

- (NSString *)storeJsCallBack:(JSValue *)function {
    NSString *callbackId = [NSString stringWithFormat:@"jsCallback_%ld", self.jsCallbackCache.count];
    [self.jsCallbackCache setValue:function forKey:callbackId];
    return callbackId;
}

- (JSValue *)getJsCallBackWithCallbackId:(NSString *)callbackId {
    if (callbackId.length <= 0) {
        return nil;
    }
    return [self.jsCallbackCache objectForKey:callbackId];
}

- (void)callJSCallbackFunction:(NSString *)callbackId param:(id)param {
    JSValue *callback = [self getJsCallBackWithCallbackId:callbackId];
    if (callback) {
        if (param) {
            [callback callWithArguments:@[param]];
        } else {
            [callback callWithArguments:@[]];
        }
    }
}

@end


