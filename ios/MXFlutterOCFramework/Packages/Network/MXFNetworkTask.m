/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */


#import "MXFNetworkTask.h"
#import "MXJSFlutterDefines.h"
#import "MXFUtil.h"


@implementation MXFNetworkTask
{
  NSMutableData *_data;
  id<MXFURLRequestHandler> _handler;
  dispatch_queue_t _callbackQueue;

  MXFNetworkTask *_selfReference;
}

- (instancetype)initWithRequest:(NSURLRequest *)request
                        handler:(id<MXFURLRequestHandler>)handler
                  callbackQueue:(dispatch_queue_t)callbackQueue
{
  MXAssertParam(request);
  MXAssertParam(handler);
  MXAssertParam(callbackQueue);

  static NSUInteger requestID = 0;

  if ((self = [super init])) {
    _requestID = @(requestID++);
    _request = request;
    _handler = handler;
    _callbackQueue = callbackQueue;
    _status = MXFNetworkTaskPending;

    dispatch_queue_set_specific(callbackQueue, (__bridge void *)self, (__bridge void *)self, NULL);
  }
  return self;
}

//- (instancetype)init

- (void)dispose
{
  _selfReference = nil;
  _completionBlock = nil;
  _downloadProgressBlock = nil;
  _incrementalDataBlock = nil;
  _responseBlock = nil;
  _uploadProgressBlock = nil;
  _requestToken = nil;
}

- (void)dispatchCallback:(dispatch_block_t)callback
{
  if (dispatch_get_specific((__bridge void *)self) == (__bridge void *)self) {
    callback();
  } else {
    dispatch_async(_callbackQueue, callback);
  }
}

- (void)start
{
    if (_status != MXFNetworkTaskPending) {
    MXJSFlutterLog(@"RCTNetworkTask was already started or completed");
    return;
  }

  if (_requestToken == nil) {
    id token = [_handler sendRequest:_request withDelegate:self];
    if ([self validateRequestToken:token]) {
      _selfReference = self;
      _status = MXFNetworkTaskInProgress;
    }
  }
}

- (void)cancel
{
  if (_status == MXFNetworkTaskFinished) {
    return;
  }

  _status = MXFNetworkTaskFinished;
  id token = _requestToken;
  if (token && [_handler respondsToSelector:@selector(cancelRequest:)]) {
    [_handler cancelRequest:token];
  }
  [self dispose];
}

- (BOOL)validateRequestToken:(id)requestToken
{
  BOOL valid = YES;
  if (_requestToken == nil) {
    if (requestToken == nil) {
      if (MXF_DEBUG) {
        MXJSFlutterLog(@"Missing request token for request: %@", _request);
      }
      valid = NO;
    }
    _requestToken = requestToken;
  } else if (![requestToken isEqual:_requestToken]) {
    if (MXF_DEBUG) {
      MXJSFlutterLog(@"Unrecognized request token: %@ expected: %@", requestToken, _requestToken);
    }
    valid = NO;
  }

  if (!valid) {
    _status = MXFNetworkTaskFinished;
    if (_completionBlock) {
      MXFURLRequestCompletionBlock completionBlock = _completionBlock;
      [self dispatchCallback:^{
        completionBlock(self->_response, nil, MXFErrorWithMessage(@"Invalid request token."));
      }];
    }
    [self dispose];
  }
  return valid;
}

- (void)URLRequest:(id)requestToken didSendDataWithProgress:(int64_t)bytesSent
{
  if (![self validateRequestToken:requestToken]) {
    return;
  }

  if (_uploadProgressBlock) {
    MXFURLRequestProgressBlock uploadProgressBlock = _uploadProgressBlock;
    int64_t length = _request.HTTPBody.length;
    [self dispatchCallback:^{
      uploadProgressBlock(bytesSent, length);
    }];
  }
}

- (void)URLRequest:(id)requestToken didReceiveResponse:(NSURLResponse *)response
{
  if (![self validateRequestToken:requestToken]) {
    return;
  }

  _response = response;
  if (_responseBlock) {
    MXFURLRequestResponseBlock responseBlock = _responseBlock;
    [self dispatchCallback:^{
      responseBlock(response);
    }];
  }
}

- (void)URLRequest:(id)requestToken didReceiveData:(NSData *)data
{
  if (![self validateRequestToken:requestToken]) {
    return;
  }

  if (!_data) {
    _data = [NSMutableData new];
  }
  [_data appendData:data];

  int64_t length = _data.length;
  int64_t total = _response.expectedContentLength;

  if (_incrementalDataBlock) {
    MXFURLRequestIncrementalDataBlock incrementalDataBlock = _incrementalDataBlock;
    [self dispatchCallback:^{
      incrementalDataBlock(data, length, total);
    }];
  }
  if (_downloadProgressBlock && total > 0) {
    MXFURLRequestProgressBlock downloadProgressBlock = _downloadProgressBlock;
    [self dispatchCallback:^{
      downloadProgressBlock(length, total);
    }];
  }
}

- (void)URLRequest:(id)requestToken didCompleteWithError:(NSError *)error
{
  if (![self validateRequestToken:requestToken]) {
    return;
  }

  _status = MXFNetworkTaskFinished;
  if (_completionBlock) {
    MXFURLRequestCompletionBlock completionBlock = _completionBlock;
    [self dispatchCallback:^{
      completionBlock(self->_response, self->_data, error);
    }];
  }
  [self dispose];
}

@end
