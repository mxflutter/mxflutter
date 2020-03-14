//
//  MXJSBridge.m
//  Runner
//
//  Created by soap on 2020/3/15.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//
//  Some code ideas   Copyright (c) Facebook ReactNative, Inc. and its affiliates.
//


#import "MXJSBridge.h"
#import "MXBridgeModule.h"


static NSMutableArray<Class> *MXModuleClasses;
static dispatch_queue_t MXModuleClassesSyncQueue;
NSArray<Class> *MXGetModuleClasses(void)
{
  __block NSArray<Class> *result;
  dispatch_sync(MXModuleClassesSyncQueue, ^{
    result = [MXModuleClasses copy];
  });
  return result;
}

/**
 * Register the given class as a bridge module. All modules must be registered
 * prior to the first bridge initialization.
 */
void MXRegisterModule(Class);
void MXRegisterModule(Class moduleClass)
{
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    MXModuleClasses = [NSMutableArray new];
    MXModuleClassesSyncQueue = dispatch_queue_create("MXFlutter.ModuleClassesSyncQueue", DISPATCH_QUEUE_CONCURRENT);
  });

  // Register module
  dispatch_barrier_async(MXModuleClassesSyncQueue, ^{
    [MXModuleClasses addObject:moduleClass];
  });
}



@interface MXJSBridge ()
@end

@implementation MXJSBridge

+ (instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    static MXJSBridge *instance;
    dispatch_once(&onceToken, ^{
        instance = [MXJSBridge new];
    });
    
    return instance;
}

- (instancetype)init{
  if (self = [super init]) {

  }
  return self;
}

- (void)dealloc
{

}

- (NSArray<Class> *)moduleClasses
{
  return MXModuleClasses;
}


- (id)moduleForName:(NSString *)moduleName
{
    return nil;
  //return [self.batchedBridge moduleForName:moduleName];
}

- (id)moduleForName:(NSString *)moduleName lazilyLoadIfNecessary:(BOOL)lazilyLoad
{
    return nil;
  
}

- (id)moduleForClass:(Class)moduleClass
{
    return nil;
}

- (NSArray *)modulesConformingToProtocol:(Protocol *)protocol
{
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





@end

