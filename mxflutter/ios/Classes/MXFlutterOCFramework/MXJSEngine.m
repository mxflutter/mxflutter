//
//  MXJSEngine.m
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/22.
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

#import "MXJSEngine.h"
#import "MXJSFlutterDefines.h"
#import "MXJSFlutterEngine.h"
#import "JSModule.h"
#import "MXFDispose.h"
#import "MXJSAPI.h"
#import "MXCommon.h"

@interface MXJSEngine ()

/// jsModule加载器
@property (nonatomic, strong) JSModule *moduleLoader;
/// 搜索路径列表
@property (nonatomic, strong) NSMutableArray *searchDirArray;
/// js回调缓存字典
@property (nonatomic, strong) NSMutableDictionary *jsCallbackCache;
/// js回调个数
@property (nonatomic, assign) NSInteger jsCallbackCount;
/// jsAPI实例
@property (nonatomic, strong) MXJSAPI *jsAPI;
@end

/*
 *MXJSEngine
 *负责Native/JS 二方衔接
 *导出Native业务接口
 */
@implementation MXJSEngine

static MXJSEngine *gMXJSEngineDefaultInstance = nil;

+ (instancetype)preloadInstance {
    return gMXJSEngineDefaultInstance;
}

// 用于debug下，重复runJSApp时，重新创建MXJSEngine
+ (void)releasePreloadInstance {
    gMXJSEngineDefaultInstance = nil;
}

+ (void)preloadJSEngine:(void (^)(BOOL success, NSString *errorMsg))completion {
    
    if(gMXJSEngineDefaultInstance){
        return;
    }
    // 创建 preloadJSEngine
    gMXJSEngineDefaultInstance =  [[self alloc] init];
 
    // Documents(此名称和zip包拷贝逻辑相关)/mxflutter_js_bundle/main/main.js
    // 因为是预加载方法，因此从默认路径读取
    NSString *mainJS = [mxflutterJSBundleDefaultPath() stringByAppendingPathComponent:@"main/main.js"];
    if (![[NSFileManager defaultManager] fileExistsAtPath:mainJS]) {
        NSString *errorMsg = [NSString stringWithFormat:@"preloadJSEngine: main.js is not exist, path: %@", mainJS];
        MXFLogError(@"%@", errorMsg);
        if (completion) {
            completion(NO, errorMsg);
        }
        return;
    }

    BOOL isDebug = NO;
#ifdef DEBUG
    isDebug = YES;
#endif

    MXJSEngine *jsEngine = gMXJSEngineDefaultInstance;
    __weak typeof(jsEngine) weakJSEngine = jsEngine;
    // js线程执行
    [jsEngine.jsExecutor executeBlockOnJSThread:^{
        // 和Flutter侧传递参数保持一致，详见mx_common.dart
        weakJSEngine.jsExecutor.jsContext[@"MXJSAPI"][@"mx_flutterAppEnvironmentInfo"] = @{
            @"kReleaseMode" : @(!isDebug),
            @"kDebugMode" : @(isDebug),
            @"Platform" : @ { @"isAndroid" : @(NO), @"isIOS" : @(YES), @"operatingSystem" : [[UIDevice currentDevice] systemVersion] ?: @"" }
        };

        [jsEngine.jsExecutor
            executeScriptPath:mainJS
                   onComplete:^(NSError *error) {
                       if (error) {
                           NSString *errorMsg = [NSString stringWithFormat:@"preloadJSEngine, load main.js error: %@", error];
                           MXJSFlutterLog(@"%@", errorMsg);
                           if (completion) {
                               completion(NO, errorMsg);
                           }
                           return;
                       }

                       weakJSEngine.isJSEngineSetup = YES;

                       MXJSFlutterLog(@"MXJSEngine : preloadJSEngine success, isJSEngineSetup %d", weakJSEngine.isJSEngineSetup);

                       if (completion) {
                           completion(YES, nil);
                       }
                   }];
    }];
}

- (instancetype)init {
    if (self = [super init]) {
        self.searchDirArray = [NSMutableArray array];
        self.moduleLoader = [[JSModule alloc] init];
        self.jsCallbackCache = [NSMutableDictionary dictionary];

        [self setup];
    }
    return self;
}

- (void)dispose {
}

- (void)dealloc {
    MXJSFlutterLog(@"dealloc ");
}

- (void)setup {
    self.jsExecutor = [[MXJSExecutor alloc] init];

    __weak MXJSEngine *weakSelf = self;
    [self.jsExecutor executeMXJSBlockOnJSThread:^(MXJSExecutor *executor) {
        [weakSelf setupBasicJSRuntime:weakSelf context:executor.jsContext];
    }];
}

- (void)addSearchDir:(NSString *)dir {
    if (nil == dir || [self.searchDirArray containsObject:dir]) {
        return;
    }

    [self.searchDirArray addObject:dir];
}

- (NSString *)calcRequireJSAbsolutePath:(NSString *)filePath {
    NSString *absolutePath = @"";

    // require 函数已经去掉了./packages的情况
    NSString *prefix = @"packages/";
    NSString *prefixPath = filePath;
    if ([prefixPath hasPrefix:prefix]) {
        prefixPath = [prefixPath substringFromIndex:prefix.length];
        prefixPath = [NSString stringWithFormat:@"mx_packages/%@", prefixPath];

        absolutePath = [self calcRequireJSAbsolutePathExt:prefixPath];

        if (absolutePath.length > 0) {
            return absolutePath;
        }
    }

    absolutePath = [self calcRequireJSAbsolutePathExt:filePath];

    if (absolutePath.length > 0) {
        return absolutePath;
    }

    // replace
    NSString *replacePath = [filePath stringByReplacingOccurrencesOfString:@"/packages/" withString:@"/mx_packages/"];
    absolutePath = [self calcRequireJSAbsolutePathExt:replacePath];

    return absolutePath;
}

- (NSString *)calcRequireJSAbsolutePathExt:(NSString *)filePath {
    NSString *absolutePath = @"";
    NSArray *extensions = @[ @".js", @".lib.js", @".ddc.js" ];
    for (NSString *dir in self.searchDirArray) {
        for (NSString *extension in extensions) {
            NSString *absolutePathTemp = [dir stringByAppendingPathComponent:filePath];
            if (![filePath hasSuffix:@".js"]) {
                absolutePathTemp = [NSString stringWithFormat:@"%@%@", absolutePathTemp, extension];
            }
            if ([[NSFileManager defaultManager] fileExistsAtPath:absolutePathTemp]) {
                absolutePath = absolutePathTemp;
                break;
            } else {
                // 支持业务js文件直接放置在运行目录，因此对filePath进行额外处理
#if TARGET_IPHONE_SIMULATOR
                if (![filePath hasSuffix:@".js"]) {
                    break;
                }
                NSArray *components = filePath.pathComponents;
                if (components.count != 2) {
                    break;
                }
                absolutePathTemp = [dir stringByAppendingPathComponent:components[1]];
                if ([[NSFileManager defaultManager] fileExistsAtPath:absolutePathTemp]) {
                    absolutePath = absolutePathTemp;
                    break;
                }
#endif
            }
        }
        if (absolutePath.length > 0) {
            break;
        }
    }

    return absolutePath;
}

- (void)setupBasicJSRuntime:(MXJSEngine *)jsEngine context:(JSContext *)context {
    __weak MXJSEngine *weakSelf = jsEngine;

    context.exceptionHandler = ^(JSContext *context, JSValue *exception) {
        NSString *stack = [exception objectForKeyedSubscript:@"stack"].toString;
        int line = [exception objectForKeyedSubscript:@"line"].toInt32;
        int column = [exception objectForKeyedSubscript:@"column"].toInt32;
        NSString *errorMsg = [NSString stringWithFormat:@"exception: %@,\nstack: %@,\nline: %d,\ncolumn: %d", exception, stack, line, column];
        MXJSFlutterLog(@"[JS]:context %@,", errorMsg);

        MXFlutterJSFileType fileType = MXFlutterJSFileType_Main;
        // 包含”bundle-“，则认为是业务文件报错
        if ([stack containsString:MXFLUTTER_BIZ_JSBUNDLE_FILE_PREFIX]) {
            fileType = MXFlutterJSFileType_Biz;
        }
        [weakSelf.jsFlutterEngine.engineMethodChannel invokeMethod:MXFLUTTER_JSEXCEPTION_HANDLER
                                                         arguments:@{ @"jsFileType" : @(fileType), @"errorMsg" : errorMsg }
                                                            result:NULL];
    };

    self.jsAPI = [[MXJSAPI alloc] initWithJSEngine:self context:context];
    context[@"MXJSAPI"] = self.jsAPI;

    // 该方法提供给业务使用，类似web环境直接调用，不放在MXJSAPI中
    context[@"require"] = ^(NSString *filePath) {
        return [self.jsAPI require:filePath];
    };

    // 该方法提供给业务使用，类似web环境直接调用，不放在MXJSAPI中
    context[@"setTimeout"] = ^(JSValue *function, JSValue *timeout) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)([timeout toInt32] * NSEC_PER_MSEC)), dispatch_get_main_queue(), ^{
            [function callWithArguments:@[]];
        });
    };
}

- (NSString *)storeJsCallback:(JSValue *)function {
    //生成callbackId
    NSString *callbackId = [NSString stringWithFormat:@"jsCallback_%ld", self.jsCallbackCount++];

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
            [callback callWithArguments:@[ param ]];
        } else {
            [callback callWithArguments:@[]];
        }
    }
}

- (void)callJSCallbackFunctionWithChannelName:(NSString *)channelName
                                   methodCall:(FlutterMethodCall *)methodCall
                                     callback:(void (^)(id _Nullable result))callback {
    JSValue *jsCallback = [self.jsCallbackCache objectForKey:channelName];
    if (jsCallback) {
        NSDictionary *param = @{ @"method" : methodCall.method, @"arguments" : methodCall.arguments ?: @"" };
        id result = [jsCallback callWithArguments:@[ param ]];
        if (callback) {
            callback(result);
        }
    }
}

@end
