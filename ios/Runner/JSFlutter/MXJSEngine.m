//
//  MXJSEngine.m
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import "MXJSEngine.h"
#import "MXJSFlutter.h"



@interface MXJSEngine()

@property(nonatomic,strong) NSMutableArray *searchDirArray;
@property(nonatomic,strong) NSMutableSet *runnedScriptFile;

@end


@implementation MXJSEngine

- (instancetype)init
{
    if (self = [super init])
    {
        self.searchDirArray = [NSMutableArray array];
        self.runnedScriptFile = [[NSMutableSet alloc] init];
        
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
    
    context[@"JSAPI_log"] = ^(NSString *log){
        
        NSLog(@"%@",log);
    };
    
    context[@"JSAPI_require"] = (id) ^(NSString *filePath) {
        
        MXJSFlutterLog(@"mxInclude file:%@",filePath);
        
        NSString *prefix = @"./";
        if ([filePath hasPrefix:prefix]) {
            filePath = [filePath substringFromIndex:prefix.length];
            MXJSFlutterLog(@" remove ./ mxInclude file:%@",filePath);
        }
        
        NSString *absolutePath = @"";
        for(NSString *dir in weakSelf.searchDirArray)
        {
            NSString *absolutePathTemp = [dir stringByAppendingPathComponent:filePath];
            if ([[NSFileManager defaultManager] fileExistsAtPath:absolutePathTemp]) {
                absolutePath = absolutePathTemp;
                break;
            }
        }
        

        NSMutableDictionary *module = [NSMutableDictionary dictionary];
        JSValue *value = nil;
        
        if (absolutePath.length != 0 && ![weakSelf.runnedScriptFile containsObject:absolutePath]) {
            
            NSError *fileErr = nil;
            NSString *jsStr = [NSString stringWithContentsOfFile:absolutePath encoding:NSUTF8StringEncoding error:&fileErr];
            
            [weakSelf.runnedScriptFile addObject:absolutePath];
            
            NSString *script = [NSString stringWithFormat:@"(function (){let module = {exports:{}};(function (){\n%@ \n})(); return module.exports;})();" ,jsStr];
            
            JSContext *context = [JSContext currentContext];
            
            if ([context respondsToSelector:@selector(evaluateScript:withSourceURL:)])
            {
                
                NSString *jsFilePathPrefix = [absolutePath stringByDeletingLastPathComponent];
                const NSInteger preixLen = 40;
         
                if (jsFilePathPrefix.length > preixLen) {
                    jsFilePathPrefix = [jsFilePathPrefix substringFromIndex:jsFilePathPrefix.length - preixLen];
                }
                
                NSString *jsFilePathID = [NSString stringWithFormat:@"...%@/%@",jsFilePathPrefix, [absolutePath lastPathComponent]];
                
                value = [context evaluateScript:script withSourceURL:[NSURL URLWithString:jsFilePathID]];
            } else
            {
                value = [context evaluateScript:script];
            }
            
        }
        
        if (value == nil) {
            module[@"exports"] = [NSNull null];
        }
        else{
            module[@"exports"] = value;
        }
        
        absolutePath = absolutePath?absolutePath:@"";
        module[@"absolutePath"] = absolutePath;
        
        return module;

    };
}





@end


