//
//  FlutterJSManager.m
//  Runner
//
//  Created by lucaliu on 2019/11/16.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "FlutterJSManager.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import <Flutter/Flutter.h>
#import "FlutterMethodChannelManager.h"

@interface FlutterJSManager ()

@property (nonatomic, strong) JSContext *jsContext;
@property (nonatomic, strong) FlutterMethodChannel *methodChannel;

@end

@implementation FlutterJSManager

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setup];
    }
    return self;
}

#pragma mark - Public Method

- (void)runMainJS
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"main" ofType:@"js"];
    NSData *jsData = [[NSData alloc] initWithContentsOfFile:path];
    NSString *jsCode = [[NSString alloc] initWithData:jsData encoding:NSUTF8StringEncoding];
    [self.jsContext evaluateScript:jsCode];
}

#pragma mark - Private Method

- (void)setup
{
    [self setupMethodChannel];
    
    self.jsContext = [[JSContext alloc] init];
    
    [self insertJSMethod];
    
    // 先加载require.js
    [self loadRequireJS];
    
//     加载其他js文件
//    [self loadLogicJS];
}

- (void)insertJSMethod
{
    self.jsContext[@"mxlog"] = ^(NSString *string) {
        return NSLog(@"%@",string);
    };
    
    self.jsContext[@"load_file_native"] = ^(NSString *path) {
        NSString *native_path = [NSString stringWithFormat:@"%@/%@",[[NSBundle mainBundle] bundlePath], path];
        NSData *jsData = [[NSData alloc] initWithContentsOfFile:native_path];
        NSString *jsCode = [[NSString alloc] initWithData:jsData encoding:NSUTF8StringEncoding];
        return jsCode;
    };
    
    self.jsContext[@"start_paint"] = ^(id result) {
        UINavigationController *navigationController = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
        FlutterViewController *flutterVC = (FlutterViewController *)navigationController.topViewController;
        
        // 绘制开始
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [[FlutterMethodChannelManager sharedInstance].methodChannel invokeMethod:@"start_paint" arguments:result];
        });
    };
}

- (void)loadRequireJS
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"require" ofType:@"js"];
    NSData *jsData = [[NSData alloc] initWithContentsOfFile:path];
    NSString *jsCode = [[NSString alloc] initWithData:jsData encoding:NSUTF8StringEncoding];
    [self.jsContext evaluateScript:jsCode];
}

- (void)loadLogicJS
{
    NSDirectoryEnumerator *myDirectoryEnumerator = [[NSFileManager defaultManager] enumeratorAtPath:[[NSBundle mainBundle] bundlePath]];
    NSString *file;
    while ((file = [myDirectoryEnumerator nextObject]))
    {
        NSString *fileName = [file stringByDeletingPathExtension];
        if ([[file pathExtension] isEqualToString:@"js"])
        {
            if ([fileName isEqualToString:@"main"] || [fileName isEqualToString:@"require"])
            {
                continue;
            }
            
            NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"js"];
            NSData *jsData = [[NSData alloc] initWithContentsOfFile:filePath];
            NSString *jsCode = [[NSString alloc] initWithData:jsData encoding:NSUTF8StringEncoding];
            [self.jsContext evaluateScript:jsCode];
        }
    }
}

- (void)setupMethodChannel
{
//    self.methodChannel = [FlutterMethodChannel methodChannelWithName:@"dart2js.method_channl" binaryMessenger:_jsFlutterEngine.flutterViewController.binaryMessenger];
//
//    [self.methodChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
//
//    }];
}


@end
