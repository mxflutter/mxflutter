//
//  MXJSEngine.m
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/22.
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import "MXJSEngine.h"
#import "MXJSFlutterDefines.h"
#import "MXJSFlutterEngine.h"
#import "JSModule.h"
#import <Flutter/Flutter.h>
#import "MXFDispose.h"

@interface MXJSEngine()

@property (nonatomic, strong) JSModule *moduleLoader;
@property (nonatomic, strong) NSMutableArray *searchDirArray;

@property (nonatomic, strong) NSMutableDictionary *jsCallbackCache;
@property (nonatomic, assign) NSInteger jsCallbackCount;

@property (nonatomic, strong) NSMutableDictionary *jsVauleMirrorObjGCMap;
@property (nonatomic, strong) NSTimer *gcTimer;

@end


@implementation MXJSEngine

- (instancetype)init
{
    if (self = [super init])
    {
        self.searchDirArray = [NSMutableArray array];
        self.moduleLoader = [[JSModule alloc] init];
        self.jsCallbackCache = [NSMutableDictionary dictionary];
        
        self.jsVauleMirrorObjGCMap = [NSMutableDictionary dictionary];
        
        [self setup];
    }
    return self;
}

- (void)dispose
{
    [self.gcTimer invalidate];
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
        [weakSelf setupBasicJSRuntime:weakSelf context:executor.jsContext];
    }];
    
    //
    self.gcTimer = [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(onGCTimer) userInfo:nil repeats:YES];
}

- (void)onGCTimer{
        
    NSMutableArray *needDeallocObjMirrorIDArray = [NSMutableArray array];

    for (NSString *mirrorID in self.jsVauleMirrorObjGCMap) {
        
        JSManagedValue *managedValue = self.jsVauleMirrorObjGCMap[mirrorID];
        if (managedValue.value == nil) {
           
            [needDeallocObjMirrorIDArray addObject:mirrorID];
        }
    }
    //TODO: fix bug
    //MXJSFlutterLog(@"onGCTimer:jsVauleGCManagedMap.count:%lu needDeallocObjMirrorIDArray.count:%lu",
    //               (unsigned long)self.jsVauleMirrorObjGCMap.count,(unsigned long)needDeallocObjMirrorIDArray.count);
  
    if(needDeallocObjMirrorIDArray.count > 0)
    {
        @synchronized (self.jsVauleMirrorObjGCMap) {
            [self.jsVauleMirrorObjGCMap removeObjectsForKeys:needDeallocObjMirrorIDArray];
        }
        
        //invokeFlutter dealloc dart obj
        [self.jsFlutterEngine invokeFlutterRemoveMirrorObjsRef:needDeallocObjMirrorIDArray];
    }
}

- (void)addSearchDir:(NSString*)dir
{
    if (nil == dir || [self.searchDirArray containsObject:dir]) {
        return;
    }
    
    [self.searchDirArray addObject:dir];
}

- (NSString *)calcRequireJSAbsolutePath:(NSString *)filePath{
    
    NSString *absolutePath = @"";
    
    //require 函数已经去掉了./packages的情况
    NSString *prefix = @"packages/";
    NSString *prefixPath = filePath;
    if ([prefixPath hasPrefix:prefix]) {
        prefixPath = [prefixPath substringFromIndex:prefix.length];
        prefixPath = [NSString stringWithFormat:@"mx_packages/%@",prefixPath];
        
        absolutePath = [self calcRequireJSAbsolutePathExt:prefixPath];
         
         if (absolutePath.length > 0) {
             return absolutePath;
         }
         
    }
    
    absolutePath = [self calcRequireJSAbsolutePathExt:filePath];
    
    if (absolutePath.length > 0) {
        return absolutePath;
    }
    
    //replace
    NSString *replacePath = [filePath stringByReplacingOccurrencesOfString:@"/packages/" withString:@"/mx_packages/"];
    absolutePath = [self calcRequireJSAbsolutePathExt:replacePath];
    
    return absolutePath;
}

- (NSString *)calcRequireJSAbsolutePathExt:(NSString *)filePath{
    
    NSString *absolutePath = @"";
    NSArray *extensions = @[@".js",@".lib.js",@".ddc.js"];
    for(NSString *dir in self.searchDirArray) {
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
    
    return absolutePath;
}

- (void)setupBasicJSRuntime:(MXJSEngine* )jsEngine context:(JSContext* )context
{
    __weak MXJSEngine *weakSelf = jsEngine;
    
    context.exceptionHandler = ^(JSContext *con, JSValue *exception) {
        MXJSFlutterLog(@"js context.exceptionHandler  %@", exception);
    };
    context[@"require"] = ^(NSString *filePath) {
        //MXJSFlutterLog(@"require file:%@",filePath);
        
        NSString *prefix = @"./";
        if ([filePath hasPrefix:prefix]) {
            filePath = [filePath substringFromIndex:prefix.length];
        }
        
        NSString *absolutePath = [weakSelf calcRequireJSAbsolutePath:filePath];

        JSModule *module = nil;
        if (absolutePath.length != 0) {
            //MXJSFlutterLog(@"require file:%@ found absolutePath=%@",filePath, absolutePath);
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

    context[@"isMXIOS"] = ^() {
        return [NSNumber numberWithBool:YES];
    };
    context[@"isMXAndroid"] = ^() {
        return [NSNumber numberWithBool:NO];
    };

    //------Dart2Js支持------
    
    //------Flutter Bridge------
    
    /**
    * @param mirrorID 用于传递到Flutter侧删除对应对象
    * @param fneedNativeManagedValue
    */
    context[@"mxfAddJSValueToMirrorObjGCMap"] = ^(NSString *mirrorID,JSValue* needNativeManagedValue) {
        
        //对于Logic MirrorObj 以JS生命周期为主导的对象，利用JSManagedValue特性，监控JS侧MirrorObj的释放情况，定时释放Flutter侧对象
        JSManagedValue *gcValue = [JSManagedValue managedValueWithValue:needNativeManagedValue];
        
        @synchronized (weakSelf.jsVauleMirrorObjGCMap) {
            self.jsVauleMirrorObjGCMap[mirrorID] = gcValue;
        }
    };
    
    
    /**
    * @param callJSONStr 透传字段
    * @param function 回调
    */
    context[@"mxfJSBridgeInvokeFlutterCommonChannel"] = ^(NSString* callJSONStr,  JSValue* function) {
        
        //Native 透传callJSONStr 不做任何解析
        [self.jsFlutterEngine invokeFlutterCommonChannel:callJSONStr callback:^(id  _Nullable result) {
            //callbak 透传result 不做任何解析
            if (result) {
                [function callWithArguments:@[result]];
            } else {
                [function callWithArguments:@[]];
            }
        }];
        
    };
    
    
    /**
    * @param channelName 通道名
    * @param methodName 方法名
    * @param params 参数
    * @param function 回调
    */
    context[@"mx_jsbridge_MethodChannel_invokeMethod"] = ^(NSString* channelName, NSString* methodName, JSValue* params, JSValue* function) {
        [self.jsFlutterEngine callFlutterMethodChannelInvoke:channelName methodName:methodName params:[params toObject] callback:^(id  _Nullable result) {
            if (result) {
                [function callWithArguments:@[result]];
            } else {
                [function callWithArguments:@[]];
            }
        }];
    };
    
//    /**
//    * @param channelName 通道名
//    * @param function 回调
//    */
//    context[@"mx_jsbridge_MethodChannel_setMethodCallHandler"] = ^(NSString* channelName, JSValue* function) {
//
//    };
    
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
        NSString *onDataId = [self storeJsCallback:onData];
        NSString *onErrorId = [self storeJsCallback:onError];
        NSString *onDoneId = [self storeJsCallback:onDone];

        [self.jsFlutterEngine callFlutterEventChannelReceiveBroadcastStreamListenInvoke:channelName streamParam:streamParam onDataId:onDataId onErrorId:onErrorId onDoneId:onDoneId cancelOnError:cancelOnError];
    };
    //------Flutter Bridge------
}

- (NSString *)storeJsCallback:(JSValue *)function {
    //生成callbackId
    NSString *callbackId = [NSString stringWithFormat:@"jsCallback_%ld", self.jsCallbackCount ++];
    
    //通过JSManagedValue保存，绑定JS生命周期
    JSManagedValue *cacheValue = [JSManagedValue managedValueWithValue:function];
    [[self.jsExecutor.jsContext virtualMachine] addManagedReference:cacheValue withOwner:self];
    
    //存入Cache字典，便于索引
//    [self.jsCallbackCache setObject:cacheValue forKey:callbackId];
    [self.jsCallbackCache setObject:function forKey:callbackId];
    
    return callbackId;
}

- (JSValue *)getJsCallBackWithCallbackId:(NSString *)callbackId {
    if (callbackId.length <= 0) {
        return nil;
    }
    
    //根据callbackId取出对应缓存Callback
//    JSManagedValue *cacheValue = [self.jsCallbackCache objectForKey:callbackId];
//    return [cacheValue value];
    JSValue *function = [self.jsCallbackCache objectForKey:callbackId];
    return function;
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


