//
//  MXFlutterPlugin.h
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/22.
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.
#import <Flutter/Flutter.h>
#import "MXJSFlutterEngine.h"

/// MXFlutter插件
@interface MXFlutterPlugin : NSObject <FlutterPlugin>

/// MXFlutterJS引擎
@property (nonatomic, strong) MXJSFlutterEngine *mxEngine;

/// 保持Flutter插件注册器
@property (nonatomic, strong) NSObject<FlutterPluginRegistrar> *flutterRegistrar;

/// 从MXFlutterPlugin单例入口，访问MXFlutter相关API
+ (MXFlutterPlugin *)shareInstance;

@end
