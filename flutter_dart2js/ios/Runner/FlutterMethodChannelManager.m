//
//  FlutterMethodChannelManager.m
//  Runner
//
//  Created by lucaliu on 2019/11/18.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "FlutterMethodChannelManager.h"

@implementation FlutterMethodChannelManager

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)setupMethodChannelWithMessenger:(NSObject<FlutterPluginRegistrar> *)registrar
{
    self.methodChannel = [FlutterMethodChannel methodChannelWithName:@"flutter.js.channel" binaryMessenger:registrar.messenger];
}

@end
