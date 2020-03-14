//
//  MXJSBridge.h
//  Runner
//
//  Created by soap on 2020/3/15.
//  Some code ,ideas   Copyright (c) Facebook ReactNative, Inc. and its affiliates.
//
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>
#import "MXBridgeModule.h"

NS_ASSUME_NONNULL_BEGIN

@interface MXJSBridge : NSObject

+ (instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
