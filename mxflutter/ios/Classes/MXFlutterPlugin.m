//
//  MXFlutterPlugin.m
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/22.
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.
#import "MXFlutterPlugin.h"

@interface MXFlutterPlugin ()

@end

/// MXFlutter插件
@implementation MXFlutterPlugin

static MXFlutterPlugin *gMXFlutterPluginInstance = nil;

+ (MXFlutterPlugin *)shareInstance {
    return gMXFlutterPluginInstance;
}

/// 注册
/// @param registrar 注册者
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar {
    if (gMXFlutterPluginInstance != nil) {
        [gMXFlutterPluginInstance dispose];
    }

    gMXFlutterPluginInstance = [[MXFlutterPlugin alloc] init];
    gMXFlutterPluginInstance.flutterRegistrar = registrar;
    gMXFlutterPluginInstance.mxEngine = [[MXJSFlutterEngine alloc] initWithFlutterMessager:registrar.messenger];
}

/// 释放MXEngine
- (void)dispose {
    if (self.mxEngine != nil) {
        [self.mxEngine dispose];
        self.mxEngine = nil;
    }
}

@end
