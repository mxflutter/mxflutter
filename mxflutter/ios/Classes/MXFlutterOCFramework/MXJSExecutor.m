//
//  MXJSExecutor.m
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import "MXJSExecutor.h"

#import <pthread.h>
#import <UIKit/UIDevice.h>
#import "MXJSFlutterDefines.h"


@interface MXJSContext : NSObject

@property (nonatomic, strong, readonly) JSContext *context;

- (instancetype)initWithJSContext:(JSContext *)context
                         onThread:(NSThread *)javaScriptThread;

@end

@implementation MXJSContext
{
    
    NSThread *_javaScriptThread;
}

- (instancetype)initWithJSContext:(JSContext *)context
                         onThread:(NSThread *)javaScriptThread
{
    if ((self = [super init])) {
        
        static NSInteger sJSContextIndex = 0;
        _context = context;
        _context.name = [NSString stringWithFormat:@"MXJSFlutterJSContext:%ld",(long)sJSContextIndex++] ;
        _javaScriptThread = javaScriptThread;
    }
    return self;
}


- (BOOL)isValid
{
    return _context != nil;
}

- (void)dispose
{
    if (self.isValid) {
        _context = nil;
        _javaScriptThread = nil;
        
        CFRunLoopStop([[NSRunLoop currentRunLoop] getCFRunLoop]);
    }
}

@end



@implementation MXJSExecutor
{
    MXJSContext *_mxContext;
    NSThread *_javaScriptThread;
}

- (instancetype)init
{
    if (self = [super init])
    {
        [self setup];
    }
    return self;
}

- (void)dealloc
{
    [_mxContext performSelector:@selector(invalidate)
                       onThread:_javaScriptThread
                     withObject:nil
                  waitUntilDone:NO];
    _mxContext = nil;
    
    MXJSFlutterLog(@"dealloc ");
    
}

- (JSContext *)jsContext
{
    return _mxContext.context;
}

- (void)setup
{
    NSThread *javaScriptThread = [[NSThread alloc] initWithTarget:[MXJSExecutor class]
                                                         selector:@selector(runRunLoopThread)
                                                           object:nil];
    javaScriptThread.name = @"__MXJSFlutterJSThread__";
    javaScriptThread.qualityOfService = NSOperationQualityOfServiceUserInteractive;
    [javaScriptThread start];
    
    _javaScriptThread = javaScriptThread;
    
    __weak MXJSExecutor *weakSelf = self;
    [self executeBlockOnJSThread:^{
        
        MXJSExecutor *strongSelf = weakSelf;
        
        if (strongSelf == nil)
        {
            return ;
        }
        
        JSContext *jsContext = [[JSContext alloc] init];
        strongSelf->_mxContext = [[MXJSContext alloc] initWithJSContext:jsContext onThread:strongSelf->_javaScriptThread];
        strongSelf->_isValid = YES;
        
    }];
    
}


+ (void)runRunLoopThread
{
    @autoreleasepool {
        
        pthread_setname_np([NSThread currentThread].name.UTF8String);
        
        CFRunLoopSourceContext noSpinCtx = {0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL};
        CFRunLoopSourceRef noSpinSource = CFRunLoopSourceCreate(NULL, 0, &noSpinCtx);
        CFRunLoopAddSource(CFRunLoopGetCurrent(), noSpinSource, kCFRunLoopDefaultMode);
        CFRelease(noSpinSource);
        
        while (kCFRunLoopRunStopped != CFRunLoopRunInMode(kCFRunLoopDefaultMode, ((NSDate *)[NSDate distantFuture]).timeIntervalSinceReferenceDate, NO)) {
            
        }
    }
}


- (MXJSContext *)context
{
    if (!self.isValid)
    {
        return nil;
    }
    
    return _mxContext;
}

//- (NSError *)executeScriptSync:(NSString *)script sourceURL:(NSURL *)sourceURL
//{
//    return [self _executeScript:script sourceURL:sourceURL];
//}


- (void)executeScriptAsync:(NSString *)script
                 sourceURL:(NSURL *)sourceURL
                onComplete:(MXJSCompleteBlock)onComplete
{
    
    NSError *error = nil;
    
    [self executeBlockOnJSThread:^{
        
        [self executeScript:script sourceURL:sourceURL];
        if (onComplete) {
            onComplete(error);
        }
    }];
}


//mark-exe
- (void)executeScriptPath:(NSString*)path
               onComplete:(MXJSCompleteBlock )onComplete
{
    MXJSCompleteBlock onCompleteBlock = onComplete?onComplete:^(NSError *err){
        
    };
    
    if (path.length == 0) {
        onCompleteBlock([NSError new]);
        return;
    }
    
    NSError *fileErr = nil;
    NSString *jsStr = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&fileErr];
    
    if (fileErr)
    {
        onCompleteBlock(fileErr);
        return;
    }
    
    //加上前缀，标示执行的是MAC机，还是模拟器/真机上的文件
    NSString *jsFilePathPrefix = [path stringByDeletingLastPathComponent];
    const NSInteger preixLen = 40;
    
    if (jsFilePathPrefix.length > preixLen) {
        jsFilePathPrefix = [jsFilePathPrefix substringFromIndex:jsFilePathPrefix.length - preixLen];
    }
    
    NSString *jsFilePathID = [NSString stringWithFormat:@"...%@/%@",jsFilePathPrefix, [path lastPathComponent]];
    
    [self executeScriptAsync:jsStr sourceURL:[NSURL URLWithString:jsFilePathID] onComplete:^(NSError *error ){
        
        onCompleteBlock(error);
    }];
}


- (void)executeBlockOnJSThread:(dispatch_block_t)block
{
    if ([NSThread currentThread] != _javaScriptThread) {
        [self performSelector:@selector(executeBlockOnJSThread:)
                     onThread:_javaScriptThread withObject:block waitUntilDone:NO];
    } else {
        block();
    }
}

- (void)executeAsyncBlockOnJSThread:(dispatch_block_t)block
{
    [self performSelector:@selector(executeBlockOnJSThread:)
                 onThread:_javaScriptThread
               withObject:block
            waitUntilDone:NO];
}

- (void)executeMXJSBlockOnJSThread:(MXJSDispatchBlock)block
{
    if ([NSThread currentThread] != _javaScriptThread) {
        [self performSelector:@selector(executeMXJSBlockOnJSThread:)
                     onThread:_javaScriptThread withObject:block waitUntilDone:NO];
    } else {
        block(self);
    }
}


- (JSValue *)executeScript:(NSString *)script  sourceURL:(NSURL *)sourceURL
{
    JSValue *value = nil;
    if ([_mxContext.context respondsToSelector:@selector(evaluateScript:withSourceURL:)])
    {
        value = [_mxContext.context evaluateScript:script withSourceURL:sourceURL];
    } else
    {
        value = [_mxContext.context evaluateScript:script];
    }
    
    return value;
}


- (void )invokeJSValue:(JSValue *)jsValue method:(NSString *)method args:(NSArray *)args callback:(MXJSValueCallback )callback
{
    [self executeBlockOnJSThread:^{
        
        JSValue * reslut =   [jsValue invokeMethod:method withArguments:args];
        
        if (callback) {
            callback(reslut,nil);
        }
    }];
}

- (void)invokeMethod:(NSString *)method args:(NSArray *)args callback:(MXJSValueCallback )callback
{
    [self executeBlockOnJSThread:^{
        
        JSValue * reslut =   [self.jsContext.globalObject invokeMethod:method withArguments:args];
        
        if (callback) {
            callback(reslut,nil);
        }
    }];
}



- (void)dispose {
    
}

@end
