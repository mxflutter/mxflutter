//
//  MXJSExecutor.h
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/22.
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "MXFDispose.h"

@class MXJSExecutor;

typedef void (^MXJSCompleteBlock)(NSError *_Nullable error);
typedef void (^MXJSCallback)(id _Nonnull result, NSError *_Nullable error);
typedef void (^MXJSValueCallback)(JSValue *_Nonnull result, NSError *_Nullable error);
typedef void (^MXJSDispatchBlock)(MXJSExecutor *_Nonnull jsExecutor);

NS_ASSUME_NONNULL_BEGIN

/// MXJSExecutor
/// 封装了JS 后台线程执行逻辑
@interface MXJSExecutor : NSObject <MXFDispose>

/// 是否有效
@property (nonatomic, readonly) BOOL isValid;

/// JSContext
- (JSContext *)jsContext;

/// 执行JS文件
/// @param script JS文件
/// @param sourceURL 文件url
/// @param onComplete 结束回调
- (void)executeScriptAsync:(NSString *)script sourceURL:(NSURL *)sourceURL onComplete:(MXJSCompleteBlock)onComplete;

/// 执行JS文件
/// @param path 文件路径
/// @param onComplete 结束回调
- (void)executeScriptPath:(NSString *)path onComplete:(MXJSCompleteBlock)onComplete;

/// 执行JS文件
/// @param script js文件
/// @param sourceURL 文件url
- (JSValue *)executeScript:(NSString *)script sourceURL:(NSURL *)sourceURL;

/// 在JS线程执行mxjsblock
/// @param block block
- (void)executeMXJSBlockOnJSThread:(MXJSDispatchBlock)block;

/// 在JS线程执行block
/// @param block block
- (void)executeBlockOnJSThread:(dispatch_block_t)block;

/// 执行JS方法
/// @param jsValue js实例
/// @param method 方法名称
/// @param args 参数列表
/// @param callback 回调
- (void)invokeJSValue:(JSValue *)jsValue method:(NSString *)method args:(NSArray *)args callback:(MXJSValueCallback)callback;

/// 执行MXJSAPI方法
/// @param method 方法名
/// @param args 参数
/// @param callback 回调
- (void)invokeMXJSAPIMethod:(NSString *)method args:(NSArray *)args callback:(MXJSValueCallback)callback;

@end

NS_ASSUME_NONNULL_END
