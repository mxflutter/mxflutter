//
//  MXJSExecutor.h
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@class MXJSExecutor;

typedef void (^MXJSCompleteBlock)(NSError * _Nullable error);
typedef void (^MXJSCallback)(id _Nonnull result, NSError * _Nullable error);
typedef void (^MXJSValueCallback)(JSValue * _Nonnull result, NSError * _Nullable error);
typedef void (^MXJSDispatchBlock)(MXJSExecutor * _Nonnull jsExecutor);

NS_ASSUME_NONNULL_BEGIN

/*
 *MXJSExecutor
 *封装了JS 后台线程执行逻辑
 *
 */
@interface MXJSExecutor : NSObject


@property (nonatomic, readonly) BOOL isValid;

- (JSContext *)jsContext;

- (void)executeScriptAsync:(NSString *)script
                 sourceURL:(NSURL *)sourceURL
                onComplete:(MXJSCompleteBlock )onComplete;

- (void)executeScriptPath:(NSString*)path
               onComplete:(MXJSCompleteBlock )onComplete;


- (JSValue *)executeScript:(NSString *)script  sourceURL:(NSURL *)sourceURL;

//- (void)callFunctionOnModule:(NSString *)module
//                      method:(NSString *)method
//                   arguments:(NSArray *)args
//             jsValueCallback:(MXJavaScriptValueCallback)onComplete;


- (void)executeMXJSBlockOnJSThread:(MXJSDispatchBlock)block;

- (void)executeBlockOnJSThread:(dispatch_block_t)block;

- (void)invokeJSValue:(JSValue *)jsValue method:(NSString *)method args:(NSArray *)args callback:(MXJSValueCallback )callback;

- (void)invokeMethod:(NSString *)method args:(NSArray *)args callback:(MXJSValueCallback )callback;

@end

NS_ASSUME_NONNULL_END
