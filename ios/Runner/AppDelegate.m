//
//  AppDelegate.m
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/22.
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "MXFlutterPlugin.h"


@interface AppDelegate ()

//示例代码，非运行mxflutter的必须代码
@property (nonatomic, strong) FlutterMethodChannel *listViewDemoChannel;

@end

/// AppDelegate
@implementation AppDelegate

/// App完成启动回调
/// @param application app
/// @param launchOptions 参数
- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //如需定制一下MXFlutter ，在registerWithRegistry之前调用
    //如无需定制，无需调用setupMXFlutter。
    [self setupMXFlutter];
    
    [GeneratedPluginRegistrant registerWithRegistry:self];
    // Override point for customization after application launch.
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

/// 创建MXFlutter引擎
- (void)setupMXFlutter {
    [self setupMessageChannelDemo];
}

/// 示例代码，非运行mxflutter的必须代码，支持JS的MessageChannel例子
- (void)setupMessageChannelDemo{
    
    FlutterViewController* controller = (FlutterViewController*)self.window.rootViewController;
    
    self.listViewDemoChannel = [FlutterMethodChannel
                                methodChannelWithName:@"MXFlutter_MethodChannel_Demo"
                                binaryMessenger:controller.binaryMessenger];
    
    __weak AppDelegate *weakSelf = self;
    [self.listViewDemoChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        __strong AppDelegate *strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }
        
        if ([call.method isEqualToString:@"callNativeIconListRefresh"]) {
            
            //result(@[@1,@2,@3,@4]);
    
            NSURLSession *session = [NSURLSession sharedSession];
            NSURL *url = [NSURL URLWithString:@"https://reactnative.dev/movies.json"];
            NSURLSessionDataTask *task = [session dataTaskWithURL:url
                                                completionHandler:^(NSData * _Nullable data,
                                                 NSURLResponse * _Nullable response,
                                                  NSError * _Nullable error) {
                result(response.description);
            }];
            
            [task resume];
           
            
        } else if ([call.method isEqualToString:@"callNativeIconListLoadMore"]) {
            
            result(@{@"SomeStr":@"MethodCall",@"NumList":@[@4,@3,@2,@1]});
        }
        
    }];
}

@end

