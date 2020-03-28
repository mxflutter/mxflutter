//
//  MXJSBridge.h
//  MXFlutterOCFramework
//
//  Created by soap on 2020/3/15.
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//  Some code/ideas   Copyright (c) Facebook ReactNative, Inc. and its affiliates.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>
#import "MXBridgeModule.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "MXJSFlutterDefines.h"

NS_ASSUME_NONNULL_BEGIN

@class MXJSFlutterApp;

@interface MXJSBridge : NSObject

+ (instancetype)shareInstance;

- (void)registerModules:(MXJSFlutterApp*)flutterApp jsAPPValueBridge:(JSValue*)jsAPPValueBridge;
- (void)sendEventWithName:(NSString *)eventName data:(id)data callback:(JSValue* _Nullable )jsCallbackFun;


- (id)moduleForClass:(Class)moduleClass;

@end

NS_ASSUME_NONNULL_END
