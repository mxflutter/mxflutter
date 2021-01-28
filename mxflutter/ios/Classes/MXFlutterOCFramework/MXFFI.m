//
//  MXFFI.m
//  MXFlutterOCFramework
//
//  Created by lucaliu on 2020/10/12.
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import "MXFFI.h"
#import "MXFlutterPlugin.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "MXJSEngine.h"

@implementation MXFFI

const char *syncPropsCallback(char *args) {
    JSValue *appObj = [MXFlutterPlugin shareInstance].mxEngine.currentApp.jsEngine.jsAppObj;
    NSDictionary *argument = @ { @"method" : @"syncPropsCallback", @"arguments" : [NSString stringWithUTF8String:args] };
    JSValue *result = [appObj invokeMethod:@"nativeCall" withArguments:@[ argument ]];
    return result.toString.UTF8String;
}

@end
