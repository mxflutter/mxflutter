//
//  MXJSBridge.m
//  MXFlutterOCFramework
//
//  Created by soap on 2020/3/15.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//
//  Some code / ideas   Copyright (c) Facebook ReactNative, Inc. and its affiliates.
//

#import "MXJSBridge.h"
#import "MXBridgeModule.h"
#import "MXJSFlutterApp.h"

static NSMutableArray<Class> *g_MXModuleClasses;
static dispatch_queue_t MXModuleClassesSyncQueue;
NSArray<Class> *MXGetModuleClasses(void) {
    __block NSArray<Class> *result;
    dispatch_sync(MXModuleClassesSyncQueue, ^{
        result = [g_MXModuleClasses copy];
    });
    return result;
}

/**
 * Register the given class as a bridge module. All modules must be registered
 * prior to the first bridge initialization.
 */
void MXRegisterModule(Class);
void MXRegisterModule(Class moduleClass) {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        g_MXModuleClasses = [NSMutableArray new];
        MXModuleClassesSyncQueue = dispatch_queue_create("MXFlutter.ModuleClassesSyncQueue", DISPATCH_QUEUE_CONCURRENT);
    });

    // Register module
    dispatch_barrier_async(MXModuleClassesSyncQueue, ^{
        [g_MXModuleClasses addObject:moduleClass];
    });
}

@interface MXJSBridge ()

/// flutterApp
@property (nonatomic, weak) MXJSFlutterApp *flutterApp;
/// 模块名
@property (nonatomic, strong) JSValue *jsAPPValueBridge;
/// 模块字典
@property (nonatomic, strong) NSMutableDictionary<NSString *, id<MXBridgeModule>> *moduleInstances;

@end

@implementation MXJSBridge

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    static MXJSBridge *instance;
    dispatch_once(&onceToken, ^{
        instance = [MXJSBridge new];
    });

    return instance;
}

- (instancetype)init {
    if (self = [super init]) {
        _moduleInstances = [[NSMutableDictionary alloc] initWithCapacity:5];
    }
    return self;
}

- (void)dealloc {
}

- (void)registerModules:(MXJSFlutterApp *)flutterApp jsAPPValueBridge:(JSValue *)jsAPPValueBridge;
{
    //先按单实例来写
    self.flutterApp = flutterApp;
    self.jsAPPValueBridge = jsAPPValueBridge;

    for (Class cls in self.moduleClasses) {
        id<MXBridgeModule> moduleInstance = [cls registerModuleInMXFlutterJSContext:jsAPPValueBridge bridge:self];

        self.moduleInstances[moduleNameForClass(cls)] = moduleInstance;
    }
}

NSString *moduleNameForClass(Class cls) {
    NSString *name = [cls moduleName];
    if (name.length == 0) {
        name = NSStringFromClass(cls);
    }

    return DropReactPrefixes(name);
}

NSString *DropReactPrefixes(NSString *s) {
    if ([s hasPrefix:@"MX"]) {
        return [s substringFromIndex:2];
    } else if ([s hasPrefix:@"MXF"]) {
        return [s substringFromIndex:3];
    }

    return s;
}

- (NSArray<Class> *)moduleClasses {
    return g_MXModuleClasses;
}

- (id)moduleForName:(NSString *)moduleName {
    return self.moduleInstances[moduleName];
}

- (id)moduleForClass:(Class)moduleClass {
    return self.moduleInstances[moduleNameForClass(moduleClass)];
}

- (NSArray *)modulesConformingToProtocol:(Protocol *)protocol {
    NSMutableArray *modules = [NSMutableArray new];
    for (Class moduleClass in [self.moduleClasses copy]) {
        if ([moduleClass conformsToProtocol:protocol]) {
            id module = [self moduleForClass:moduleClass];
            if (module) {
                [modules addObject:module];
            }
        }
    }
    return [modules copy];
}

#pragma mark - Event

- (void)sendEventWithName:(NSString *)eventName data:(id)data callback:(JSValue *)jsCallbackFun {
    // callback方式
    NSArray *arguments = data ? @[ eventName, data ] : @[ eventName ];

    if (jsCallbackFun != nil) {
        [self.flutterApp executeBlockOnJSThread:^{
            [jsCallbackFun callWithArguments:arguments];
        }];
    } else {
        //全局通知方式
        JSValue *eventHandler = self.jsAPPValueBridge[@"onNativeEvent"];

        if (eventHandler == nil || eventName.length == 0) {
            return;
        }

        [self.flutterApp invokeJSValue:self.jsAPPValueBridge
                                method:@"onNativeEvent"
                                  args:arguments
                              callback:^(JSValue *_Nonnull result, NSError *_Nullable error) {

                              }];
    }
}

@end
