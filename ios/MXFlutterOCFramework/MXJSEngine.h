//
//  MXJSEngine.h
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>
#import "MXJSExecutor.h"

@class FlutterEngine;
@class MXJSFlutterEngine;
@class MXDispose;

NS_ASSUME_NONNULL_BEGIN

/*
 *MXJSEngine
 *负责Native/JS 二方衔接
 *导出Native业务接口
 */
@interface MXJSEngine : NSObject <MXFDispose>

@property (nonatomic, weak) FlutterEngine* flutterEngine;
@property (nonatomic, weak) MXJSFlutterEngine *jsFlutterEngine;

@property (nonatomic, strong) MXJSExecutor *jsExecutor;

- (instancetype)init;

- (void)addSearchDir:(NSString*)dir;

- (void)callJSCallbackFunction:(NSString *)callbackId param:(id)param;

@end

NS_ASSUME_NONNULL_END
