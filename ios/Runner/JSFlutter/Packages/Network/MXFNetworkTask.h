/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <Foundation/Foundation.h>

#import "MXFURLRequestDelegate.h"
#import "MXFURLRequestHandler.h"
#import "MXFDispose.h"

typedef void (^MXFURLRequestCompletionBlock)(NSURLResponse *response, NSData *data, NSError *error);
typedef void (^MXFURLRequestCancellationBlock)(void);
typedef void (^MXFURLRequestIncrementalDataBlock)(NSData *data, int64_t progress, int64_t total);
typedef void (^MXFURLRequestProgressBlock)(int64_t progress, int64_t total);
typedef void (^MXFURLRequestResponseBlock)(NSURLResponse *response);

typedef NS_ENUM(NSInteger, MXFNetworkTaskStatus) {
  MXFNetworkTaskPending = 0,
  MXFNetworkTaskInProgress,
  MXFNetworkTaskFinished,
};

@interface MXFNetworkTask : NSObject <MXFURLRequestDelegate,MXFDispose>

@property (nonatomic, readonly) NSURLRequest *request;
@property (nonatomic, readonly) NSNumber *requestID;
@property (nonatomic, readonly, weak) id requestToken;
@property (nonatomic, readonly) NSURLResponse *response;

@property (nonatomic, copy) MXFURLRequestCompletionBlock completionBlock;
@property (nonatomic, copy) MXFURLRequestProgressBlock downloadProgressBlock;
@property (nonatomic, copy) MXFURLRequestIncrementalDataBlock incrementalDataBlock;
@property (nonatomic, copy) MXFURLRequestResponseBlock responseBlock;
@property (nonatomic, copy) MXFURLRequestProgressBlock uploadProgressBlock;

@property (nonatomic, readonly) MXFNetworkTaskStatus status;

- (instancetype)initWithRequest:(NSURLRequest *)request
                        handler:(id<MXFURLRequestHandler>)handler
                  callbackQueue:(dispatch_queue_t)callbackQueue NS_DESIGNATED_INITIALIZER;

- (void)start;
- (void)cancel;

@end
