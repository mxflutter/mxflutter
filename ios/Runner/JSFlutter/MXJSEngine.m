//
//  MXJSEngine.m
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import "MXJSEngine.h"
#import "MXJSFlutter.h"
#import "JSModule.h"

@interface MXJSEngine()

@property (nonatomic,strong) JSModule *moduleLoader;
@property (nonatomic,strong) NSMutableArray *searchDirArray;

@end


@implementation MXJSEngine

- (instancetype)init
{
    if (self = [super init])
    {
        self.searchDirArray = [NSMutableArray array];
        self.moduleLoader = [[JSModule alloc] init];

        [self setup];
    }
    return self;
}

- (void)dealloc
{
    MXJSFlutterLog(@"dealloc ");
}

- (void)setup
{
    self.jsExecutor = [[MXJSExecutor alloc] init];
    
    __weak MXJSEngine *weakSelf = self;
    [self.jsExecutor executeMXJSBlockOnJSThread:^(MXJSExecutor *executor) {
        setupBasicJSRuntime(weakSelf,executor.jsContext);
    }];
}

- (void)addSearchDir:(NSString*)dir
{
    if (nil == dir || [self.searchDirArray containsObject:dir]) {
        return;
    }
    
    [self.searchDirArray addObject:dir];
}

static void setupBasicJSRuntime(MXJSEngine* jsEngine,  JSContext* context)
{
    __weak MXJSEngine *weakSelf = jsEngine;
    
    context.exceptionHandler = ^(JSContext *con, JSValue *exception) {
        MXJSFlutterLog(@"js context.exceptionHandler  %@", exception);
    };
    context[@"require"] = ^(NSString *filePath) {
        MXJSFlutterLog(@"require file:%@",filePath);
        
        NSString *prefix = @"./";
        if ([filePath hasPrefix:prefix]) {
            filePath = [filePath substringFromIndex:prefix.length];
        }
        
        NSString *absolutePath = @"";
        NSArray *extensions = @[@".js",@".ddc.js"];
        for(NSString *dir in weakSelf.searchDirArray) {
            for (NSString *extension in extensions) {
                NSString *absolutePathTemp = [dir stringByAppendingPathComponent:filePath];
                if (![filePath hasSuffix:@".js"]) {
                    absolutePathTemp = [NSString stringWithFormat:@"%@%@",absolutePathTemp,extension];
                }
                if ([[NSFileManager defaultManager] fileExistsAtPath:absolutePathTemp]) {
                    absolutePath = absolutePathTemp;
                    break;
                }
            }
            if (absolutePath.length > 0) {
                break;
            }
        }
        
        JSModule *module = [JSModule new];
        if (absolutePath.length != 0) {
            MXJSFlutterLog(@"require file:%@ found absolutePath=%@",filePath, absolutePath);
            module = [JSModule require:filePath fullModulePath:absolutePath inContext:context];
            if (!module) {
                [[JSContext currentContext] evaluateScript:@"throw 'not found'"];
                return [JSValue valueWithUndefinedInContext:[JSContext currentContext]];
            }
        }
        
        return module.exports;
    };
    
    //------Dart2Js支持------
    context[@"dartPrint"] = ^(NSString *string) {
        return NSLog(@"%@",string);
    };
    
    context[@"nativePrint"] = ^(NSString *string) {
        return NSLog(@"%@",string);
    };
    
    context[@"setTimeout"] = ^(JSValue* function, JSValue* timeout) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)([timeout toInt32] * NSEC_PER_MSEC)), dispatch_get_main_queue(), ^{
            [function callWithArguments:@[]];
        });
    };
    //------Dart2Js支持------
}

@end


