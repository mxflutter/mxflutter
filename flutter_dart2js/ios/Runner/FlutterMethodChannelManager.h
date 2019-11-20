//
//  FlutterMethodChannelManager.h
//  Runner
//
//  Created by lucaliu on 2019/11/18.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlutterMethodChannelManager : NSObject

@property (nonatomic, strong) FlutterMethodChannel *methodChannel;

+ (instancetype)sharedInstance;

- (void)setupMethodChannelWithMessenger:(NSObject<FlutterPluginRegistrar> *)registrar;

@end

NS_ASSUME_NONNULL_END
