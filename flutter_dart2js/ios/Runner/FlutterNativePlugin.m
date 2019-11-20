//
//  FlutterNativePlugin.m
//  Runner
//
//  Created by 刘浪 on 2019/11/18.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "FlutterNativePlugin.h"
#import "FlutterMethodChannelManager.h"

NS_ASSUME_NONNULL_BEGIN

@implementation FlutterNativePlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar
{
    FlutterNativePlugin *instance = [[FlutterNativePlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:[FlutterMethodChannelManager sharedInstance].methodChannel];
}

- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result
{
    if ([call.method isEqualToString:@"call_native"])
    {
        result(@"flutter call: hello world!");
    }
    else
    {
        result(FlutterMethodNotImplemented);
    }
}

@end

NS_ASSUME_NONNULL_END
