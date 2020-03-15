/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */


#import "MXFNetworkTask.h"
#import "MXFURLRequestHandler.h"
#import "MXFUtil.h"
#import "MXJSBridge.h"
#import "MXEventEmitter.h"
#import "MXBridgeModule.h"

NS_ASSUME_NONNULL_BEGIN

@protocol MXFNetworkingJSExport <NSObject,JSExport>

JSExportAs(sendRequest,
           -(void)sendRequest:(NSDictionary *)query
           responseSender:(MXResponseSenderBlock)responseSender
           );

JSExportAs(abortRequest,
           -(void)abortRequest:(nonnull NSNumber *)requestID
           );

JSExportAs(clearCookies,
           -(void)clearCookies:(MXResponseSenderBlock)responseSender
           );




@end




@protocol MXFNetworkingRequestHandler <NSObject>

// @lint-ignore FBOBJCUNTYPEDCOLLECTION1
- (BOOL)canHandleNetworkingRequest:(NSDictionary *)data;
// @lint-ignore FBOBJCUNTYPEDCOLLECTION1
- (NSDictionary *)handleNetworkingRequest:(NSDictionary *)data;

@end

@protocol MXFNetworkingResponseHandler <NSObject>

- (BOOL)canHandleNetworkingResponse:(NSString *)responseType;
- (id)handleNetworkingResponse:(NSURLResponse *)response data:(NSData *)data;

@end

@interface MXFNetworking : MXEventEmitter  <MXBridgeModule,MXFNetworkingJSExport,MXFDispose,MXBridgeModule>

/**
 * Allows MXNetworking instances to be initialized with handlers.
 * The handlers will be requested via the bridge's moduleForName method when required.
 */
- (instancetype)initWithHandlersProvider:(NSArray<id<MXFURLRequestHandler>> * (^)(void))getHandlers;

/**
 * Does a handler exist for the specified request?
 */
- (BOOL)canHandleRequest:(NSURLRequest *)request;

/**
 * Return an RCTNetworkTask for the specified request. This is useful for
 * invoking the React Native networking stack from within native code.
 */
- (MXFNetworkTask *)networkTaskWithRequest:(NSURLRequest *)request
                          completionBlock:(MXFURLRequestCompletionBlock)completionBlock;

- (void)addRequestHandler:(id<MXFNetworkingRequestHandler>)handler;

- (void)addResponseHandler:(id<MXFNetworkingResponseHandler>)handler;

- (void)removeRequestHandler:(id<MXFNetworkingRequestHandler>)handler;

- (void)removeResponseHandler:(id<MXFNetworkingResponseHandler>)handler;

@end

@interface MXJSBridge (MXFNetworking)

@property (nonatomic, readonly) MXFNetworking *networking;

@end

// HACK: When uploading images/video from PHAssetLibrary, we change the URL scheme to be
// ph-upload://. This is to ensure that we upload a full video when given a ph-upload:// URL,
// instead of just the thumbnail. Consider the following problem:
// The user has a video in their camera roll with URL ph://1B3E2DDB-0AD3-4E33-A7A1-9F4AA9A762AA/L0/001
// 1. We want to display that video in an <Image> and show the thumbnail
// 2. We later want to upload that video.
// At this point, if we use the same URL for both uses, there is no way to distinguish the intent
// and we will either upload the thumbnail (bad!) or try to show the video in an <Image> (bad!).
// Our solution is to change the URL scheme in the uploader.
extern NSString *const RCTNetworkingPHUploadHackScheme;

NS_ASSUME_NONNULL_END
