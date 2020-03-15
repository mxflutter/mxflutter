/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */


#import <mutex>
#import "MXJSBridge.h"
#import "MXFNetworkTask.h"
#import "MXFNetworking.h"
#import "MXFHTTPRequestHandler.h"
#import "MXFConvert.h"
#import "NSData+GZIP.h"

//
#import "MXFDataRequestHandler.h"
#import "MXFHTTPRequestHandler.h"
#import "MXFFileRequestHandler.h"


typedef MXFURLRequestCancellationBlock (^MXFHTTPQueryResult)(NSError *error, NSDictionary<NSString *, id> *result);

NSString *const RCTNetworkingPHUploadHackScheme = @"ph-upload";

@interface MXFNetworking ()

- (MXFURLRequestCancellationBlock)processDataForHTTPQuery:(NSDictionary<NSString *, id> *)data
                                                 callback:(MXFHTTPQueryResult)callback;
@end

/**
 * Helper to convert FormData payloads into multipart/formdata requests.
 */
@interface MXFHTTPFormDataHelper : NSObject

@property (nonatomic, weak) MXFNetworking *networker;

@end

@implementation MXFHTTPFormDataHelper
{
    NSMutableArray<NSDictionary<NSString *, id> *> *_parts;
    NSMutableData *_multipartBody;
    MXFHTTPQueryResult _callback;
    NSString *_boundary;
}

static NSString *RCTGenerateFormBoundary()
{
    const size_t boundaryLength = 70;
    const char *boundaryChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.";
    
    char *bytes = (char*)malloc(boundaryLength);
    if (!bytes) {
        // CWE - 391 : Unchecked error condition
        // https://www.cvedetails.com/cwe-details/391/Unchecked-Error-Condition.html
        // https://eli.thegreenplace.net/2009/10/30/handling-out-of-memory-conditions-in-c
        abort();
    }
    size_t charCount = strlen(boundaryChars);
    for (int i = 0; i < boundaryLength; i++) {
        bytes[i] = boundaryChars[arc4random_uniform((u_int32_t)charCount)];
    }
    return [[NSString alloc] initWithBytesNoCopy:bytes length:boundaryLength encoding:NSUTF8StringEncoding freeWhenDone:YES];
}

- (MXFURLRequestCancellationBlock)process:(NSArray<NSDictionary *> *)formData
                                 callback:(MXFHTTPQueryResult)callback
{
    
    if (formData.count == 0) {
        return callback(nil, nil);
    }
    
    _parts = [formData mutableCopy];
    _callback = callback;
    _multipartBody = [NSMutableData new];
    _boundary = RCTGenerateFormBoundary();
    
    for (NSUInteger i = 0; i < _parts.count; i++) {
        NSString *uri = _parts[i][@"uri"];
        if (uri && [[uri substringToIndex:@"ph:".length] caseInsensitiveCompare:@"ph:"] == NSOrderedSame) {
            uri = [RCTNetworkingPHUploadHackScheme stringByAppendingString:[uri substringFromIndex:@"ph".length]];
            NSMutableDictionary *mutableDict = [_parts[i] mutableCopy];
            mutableDict[@"uri"] = uri;
            _parts[i] = mutableDict;
        }
    }
    
    return [_networker processDataForHTTPQuery:_parts[0] callback:^(NSError *error, NSDictionary<NSString *, id> *result) {
        return [self handleResult:result error:error];
    }];
}

- (MXFURLRequestCancellationBlock)handleResult:(NSDictionary<NSString *, id> *)result
                                         error:(NSError *)error
{
    
    if (error) {
        return _callback(error, nil);
    }
    
    // Start with boundary.
    [_multipartBody appendData:[[NSString stringWithFormat:@"--%@\r\n", _boundary]
                                dataUsingEncoding:NSUTF8StringEncoding]];
    
    // Print headers.
    NSMutableDictionary<NSString *, NSString *> *headers = [_parts[0][@"headers"] mutableCopy];
    NSString *partContentType = result[@"contentType"];
    if (partContentType != nil) {
        headers[@"content-type"] = partContentType;
    }
    [headers enumerateKeysAndObjectsUsingBlock:^(NSString *parameterKey, NSString *parameterValue, BOOL *stop) {
        [self->_multipartBody appendData:[[NSString stringWithFormat:@"%@: %@\r\n", parameterKey, parameterValue]
                                          dataUsingEncoding:NSUTF8StringEncoding]];
    }];
    
    // Add the body.
    [_multipartBody appendData:[@"\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [_multipartBody appendData:result[@"body"]];
    [_multipartBody appendData:[@"\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    
    [_parts removeObjectAtIndex:0];
    if (_parts.count) {
        return [_networker processDataForHTTPQuery:_parts[0] callback:^(NSError *err, NSDictionary<NSString *, id> *res) {
            return [self handleResult:res error:err];
        }];
    }
    
    // We've processed the last item. Finish and return.
    [_multipartBody appendData:[[NSString stringWithFormat:@"--%@--\r\n", _boundary]
                                dataUsingEncoding:NSUTF8StringEncoding]];
    NSString *contentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@", _boundary];
    return _callback(nil, @{@"body": _multipartBody, @"contentType": contentType});
}

@end

/**
 * Bridge module that provides the JS interface to the network stack.
 */
@implementation MXFNetworking
{
    NSMutableDictionary<NSNumber *, MXFNetworkTask *> *_tasksByRequestID;
    std::mutex _handlersLock;
    NSArray<id<MXFURLRequestHandler>> *_handlers;
    NSArray<id<MXFURLRequestHandler>> * (^_handlersProvider)(void);
    NSMutableArray<id<MXFNetworkingRequestHandler>> *_requestHandlers;
    NSMutableArray<id<MXFNetworkingResponseHandler>> *_responseHandlers;
}

@synthesize methodQueue = _methodQueue;

MX_EXPORT_MODULE(networking)


+ (id<MXBridgeModule>)registerModuleInMXFlutterJSContext:(JSValue*)jsAPPValue bridge:(MXJSBridge *)bridge
{

    MXFNetworking * networking = [[MXFNetworking alloc] initWithHandlersProvider:^NSArray<id<MXFURLRequestHandler>> * _Nonnull{
        return      @[
        
        [MXFHTTPRequestHandler new],
        [MXFFileRequestHandler new],
        [MXFDataRequestHandler new],
        
        ];;
    }];
    
    networking.bridge = bridge;
    
    //moduleName = networking
    jsAPPValue[self.moduleName] = networking;
    
    return networking;
    
}

- (instancetype)initWithHandlersProvider:(NSArray<id<MXFURLRequestHandler>> * (^)(void))getHandlers
{
    if (self = [super init]) {
        _handlersProvider = getHandlers;
    }
    return self;
}

- (void)dispose
{
    for (NSNumber *requestID in _tasksByRequestID) {
        [_tasksByRequestID[requestID] cancel];
    }
    [_tasksByRequestID removeAllObjects];
    _handlers = nil;
    _requestHandlers = nil;
    _responseHandlers = nil;
}

- (NSArray<NSString *> *)supportedEvents
{
    return @[@"didCompleteNetworkResponse",
    @"didReceiveNetworkResponse",
    @"didSendNetworkData",
    @"didReceiveNetworkIncrementalData",
    @"didReceiveNetworkDataProgress",
    @"didReceiveNetworkData"];
}

- (id<MXFURLRequestHandler>)handlerForRequest:(NSURLRequest *)request
{
    if (!request.URL) {
        return nil;
    }
    
    {
        std::lock_guard<std::mutex> lock(_handlersLock);
        
        if (!_handlers) {
            if (_handlersProvider) {
                _handlers = _handlersProvider();
            }
            
            // Get handlers, sorted in reverse priority order (highest priority first)
            _handlers = [_handlers sortedArrayUsingComparator:^NSComparisonResult(id<MXFURLRequestHandler> a, id<MXFURLRequestHandler> b) {
                float priorityA = [a respondsToSelector:@selector(handlerPriority)] ? [a handlerPriority] : 0;
                float priorityB = [b respondsToSelector:@selector(handlerPriority)] ? [b handlerPriority] : 0;
                if (priorityA > priorityB) {
                    return NSOrderedAscending;
                } else if (priorityA < priorityB) {
                    return NSOrderedDescending;
                } else {
                    return NSOrderedSame;
                }
            }];
        }
    }
    
    if (MXF_DEBUG) {
        // Check for handler conflicts
        float previousPriority = 0;
        id<MXFURLRequestHandler> previousHandler = nil;
        for (id<MXFURLRequestHandler> handler in _handlers) {
            float priority = [handler respondsToSelector:@selector(handlerPriority)] ? [handler handlerPriority] : 0;
            if (previousHandler && priority < previousPriority) {
                return previousHandler;
            }
            if ([handler canHandleRequest:request]) {
                if (previousHandler) {
                    if (priority == previousPriority) {
                        MXJSFlutterLog(@"The RCTURLRequestHandlers %@ and %@ both reported that"
                                       " they can handle the request %@, and have equal priority"
                                       " (%g). This could result in non-deterministic behavior.",
                                       handler, previousHandler, request, priority);
                    }
                } else {
                    previousHandler = handler;
                    previousPriority = priority;
                }
            }
        }
        return previousHandler;
    }
    
    // Normal code path
    for (id<MXFURLRequestHandler> handler in _handlers) {
        if ([handler canHandleRequest:request]) {
            return handler;
        }
    }
    return nil;
}

- (NSDictionary<NSString *, id> *)stripNullsInRequestHeaders:(NSDictionary<NSString *, id> *)headers
{
    NSMutableDictionary *result = [NSMutableDictionary dictionaryWithCapacity:headers.count];
    for (NSString *key in headers.allKeys) {
        id val = headers[key];
        if (val != [NSNull null]) {
            result[key] = val;
        }
    }
    
    return result;
}



- (MXFURLRequestCancellationBlock)buildRequest:(NSDictionary<NSString *, id> *)query
                               completionBlock:(void (^)(NSURLRequest *request))block
{
    
    NSURL *URL = [MXFConvert NSURL:query[@"url"]]; // this is marked as nullable in JS, but should not be null
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL];
    request.HTTPMethod = [MXFConvert NSString:MXNilIfNull(query[@"method"])].uppercaseString ?: @"GET";
    request.HTTPShouldHandleCookies = [MXFConvert BOOL:query[@"withCredentials"]];
    
    if (request.HTTPShouldHandleCookies == YES) {
        // Load and set the cookie header.
        NSArray<NSHTTPCookie *> *cookies = [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookiesForURL:URL];
        request.allHTTPHeaderFields = [NSHTTPCookie requestHeaderFieldsWithCookies:cookies];
    }
    
    // Set supplied headers.
    NSDictionary *headers = [MXFConvert NSDictionary:query[@"headers"]];
    [headers enumerateKeysAndObjectsUsingBlock:^(NSString *key, id value, BOOL *stop) {
        if (value) {
            [request addValue:[MXFConvert NSString:value] forHTTPHeaderField:key];
        }
    }];
    
    request.timeoutInterval = [MXFConvert NSTimeInterval:query[@"timeout"]];
    NSDictionary<NSString *, id> *data = [MXFConvert NSDictionary:MXNilIfNull(query[@"data"])];
    NSString *trackingName = data[@"trackingName"];
    if (trackingName) {
        [NSURLProtocol setProperty:trackingName
                            forKey:@"trackingName"
                         inRequest:request];
    }
    return [self processDataForHTTPQuery:data callback:^(NSError *error, NSDictionary<NSString *, id> *result) {
        if (error) {
            MXFLogError(@"Error processing request body: %@", error);
            // Ideally we'd circle back to JS here and notify an error/abort on the request.
            return (MXFURLRequestCancellationBlock)nil;
        }
        request.HTTPBody = result[@"body"];
        NSString *dataContentType = result[@"contentType"];
        NSString *requestContentType = [request valueForHTTPHeaderField:@"Content-Type"];
        BOOL isMultipart = [dataContentType hasPrefix:@"multipart"];
        
        // For multipart requests we need to override caller-specified content type with one
        // from the data object, because it contains the boundary string
        if (dataContentType && ([requestContentType length] == 0 || isMultipart)) {
            [request setValue:dataContentType forHTTPHeaderField:@"Content-Type"];
        }
        
        // Gzip the request body
        if ([request.allHTTPHeaderFields[@"Content-Encoding"] isEqualToString:@"gzip"]) {
            request.HTTPBody = [request.HTTPBody gzippedData];
            [request setValue:(@(request.HTTPBody.length)).description forHTTPHeaderField:@"Content-Length"];
        }
        
        dispatch_async(self->_methodQueue, ^{
            block(request);
        });
        
        return (MXFURLRequestCancellationBlock)nil;
    }];
}

- (BOOL)canHandleRequest:(NSURLRequest *)request
{
    return [self handlerForRequest:request] != nil;
}

/**
 * Process the 'data' part of an HTTP query.
 *
 * 'data' can be a JSON value of the following forms:
 *
 * - {"string": "..."}: a simple JS string that will be UTF-8 encoded and sent as the body
 *
 * - {"uri": "some-uri://..."}: reference to a system resource, e.g. an image in the asset library
 *
 * - {"formData": [...]}: list of data payloads that will be combined into a multipart/form-data request
 *
 * - {"blob": {...}}: an object representing a blob
 *
 * If successful, the callback be called with a result dictionary containing the following (optional) keys:
 *
 * - @"body" (NSData): the body of the request
 *
 * - @"contentType" (NSString): the content type header of the request
 *
 */
- (MXFURLRequestCancellationBlock)processDataForHTTPQuery:(nullable NSDictionary<NSString *, id> *)query callback:
(MXFURLRequestCancellationBlock (^)(NSError *error, NSDictionary<NSString *, id> *result))callback
{
    
    if (!query) {
        return callback(nil, nil);
    }
    for (id<MXFNetworkingRequestHandler> handler in _requestHandlers) {
        if ([handler canHandleNetworkingRequest:query]) {
            // @lint-ignore FBOBJCUNTYPEDCOLLECTION1
            NSDictionary *body = [handler handleNetworkingRequest:query];
            if (body) {
                return callback(nil, body);
            }
        }
    }
    NSData *body = [MXFConvert NSData:query[@"string"]];
    if (body) {
        return callback(nil, @{@"body": body});
    }
    NSString *base64String = [MXFConvert NSString:query[@"base64"]];
    if (base64String) {
        NSData *data = [[NSData alloc] initWithBase64EncodedString:base64String options:0];
        return callback(nil, @{@"body": data});
    }
    NSURLRequest *request = [MXFConvert NSURLRequest:query[@"uri"]];
    if (request) {
        
        __block MXFURLRequestCancellationBlock cancellationBlock = nil;
        MXFNetworkTask *task = [self networkTaskWithRequest:request completionBlock:^(NSURLResponse *response, NSData *data, NSError *error) {
            dispatch_async(self->_methodQueue, ^{
                cancellationBlock = callback(error, data ? @{@"body": data, @"contentType": MXNullIfNil(response.MIMEType)} : nil);
            });
        }];
        
        [task start];
        
        __weak MXFNetworkTask *weakTask = task;
        return ^{
            [weakTask cancel];
            if (cancellationBlock) {
                cancellationBlock();
            }
        };
    }
    NSArray<NSDictionary *> *formData = [MXFConvert NSDictionaryArray:query[@"formData"]];
    if (formData) {
        MXFHTTPFormDataHelper *formDataHelper = [MXFHTTPFormDataHelper new];
        formDataHelper.networker = self;
        return [formDataHelper process:formData callback:callback];
    }
    // Nothing in the data payload, at least nothing we could understand anyway.
    // Ignore and treat it as if it were null.
    return callback(nil, nil);
}

+ (NSString *)decodeTextData:(NSData *)data fromResponse:(NSURLResponse *)response withCarryData:(NSMutableData *)inputCarryData
{
    NSStringEncoding encoding = NSUTF8StringEncoding;
    if (response.textEncodingName) {
        CFStringEncoding cfEncoding = CFStringConvertIANACharSetNameToEncoding((CFStringRef)response.textEncodingName);
        encoding = CFStringConvertEncodingToNSStringEncoding(cfEncoding);
    }
    
    NSMutableData *currentCarryData = inputCarryData ?: [NSMutableData new];
    [currentCarryData appendData:data];
    
    // Attempt to decode text
    NSString *encodedResponse = [[NSString alloc] initWithData:currentCarryData encoding:encoding];
    
    if (!encodedResponse && data.length > 0) {
        if (encoding == NSUTF8StringEncoding && inputCarryData) {
            // If decode failed, we attempt to trim broken character bytes from the data.
            // At this time, only UTF-8 support is enabled. Multibyte encodings, such as UTF-16 and UTF-32, require a lot of additional work
            // to determine wether BOM was included in the first data packet. If so, save it, and attach it to each new data packet. If not,
            // an encoding has to be selected with a suitable byte order (for ARM iOS, it would be little endianness).
            
            CFStringEncoding cfEncoding = CFStringConvertNSStringEncodingToEncoding(encoding);
            // Taking a single unichar is not good enough, due to Unicode combining character sequences or characters outside the BMP.
            // See https://www.objc.io/issues/9-strings/unicode/#common-pitfalls
            // We'll attempt with a sequence of two characters, the most common combining character sequence and characters outside the BMP (emojis).
            CFIndex maxCharLength = CFStringGetMaximumSizeForEncoding(2, cfEncoding);
            
            NSUInteger removedBytes = 1;
            
            while (removedBytes < maxCharLength) {
                encodedResponse = [[NSString alloc] initWithData:[currentCarryData subdataWithRange:NSMakeRange(0, currentCarryData.length - removedBytes)]
                                                        encoding:encoding];
                
                if (encodedResponse != nil) {
                    break;
                }
                
                removedBytes += 1;
            }
        } else {
            // We don't have an encoding, or the encoding is incorrect, so now we try to guess
            [NSString stringEncodingForData:data
                            encodingOptions:@{ NSStringEncodingDetectionSuggestedEncodingsKey: @[ @(encoding) ] }
                            convertedString:&encodedResponse
                        usedLossyConversion:NULL];
        }
    }
    
    if (inputCarryData) {
        NSUInteger encodedResponseLength = [encodedResponse dataUsingEncoding:encoding].length;
        
        // Ensure a valid subrange exists within currentCarryData
        if (currentCarryData.length >= encodedResponseLength) {
            NSData *newCarryData = [currentCarryData subdataWithRange:NSMakeRange(encodedResponseLength, currentCarryData.length - encodedResponseLength)];
            [inputCarryData setData:newCarryData];
        } else {
            [inputCarryData setLength:0];
        }
    }
    
    return encodedResponse;
}

- (void)sendData:(NSData *)data
    responseType:(NSString *)responseType
        response:(NSURLResponse *)response
         forTask:(MXFNetworkTask *)task
{
    
    id responseData = nil;
    for (id<MXFNetworkingResponseHandler> handler in _responseHandlers) {
        if ([handler canHandleNetworkingResponse:responseType]) {
            responseData = [handler handleNetworkingResponse:response data:data];
            break;
        }
    }
    
    if (!responseData) {
        if (data.length == 0) {
            return;
        }
        
        if ([responseType isEqualToString:@"text"]) {
            // No carry storage is required here because the entire data has been loaded.
            responseData = [MXFNetworking decodeTextData:data fromResponse:task.response withCarryData:nil];
            if (!responseData) {
                MXFLogWarn(@"Received data was not a string, or was not a recognised encoding.");
                return;
            }
        } else if ([responseType isEqualToString:@"base64"]) {
            responseData = [data base64EncodedStringWithOptions:0];
        } else {
            MXFLogWarn(@"Invalid responseType: %@", responseType);
            return;
        }
    }
    
    [self sendEventWithName:@"didReceiveNetworkData" body:@[task.requestID, responseData]];
}

- (void)sendRequest:(NSURLRequest *)request
       responseType:(NSString *)responseType
 incrementalUpdates:(BOOL)incrementalUpdates
     responseSender:(MXResponseSenderBlock)responseSender
{
    
    __weak __typeof(self) weakSelf = self;
    __block MXFNetworkTask *task;
    MXFURLRequestProgressBlock uploadProgressBlock = ^(int64_t progress, int64_t total) {
        NSArray *responseJSON = @[task.requestID, @((double)progress), @((double)total)];
        [weakSelf sendEventWithName:@"didSendNetworkData" body:responseJSON];
    };
    
    MXFURLRequestResponseBlock responseBlock = ^(NSURLResponse *response) {
        NSDictionary<NSString *, NSString *> *headers;
        NSInteger status;
        if ([response isKindOfClass:[NSHTTPURLResponse class]]) { // Might be a local file request
            NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
            headers = httpResponse.allHeaderFields ?: @{};
        status = httpResponse.statusCode;
    } else {
        headers = response.MIMEType ? @{@"Content-Type": response.MIMEType} : @{};
status = 200;
}
id responseURL = response.URL ? response.URL.absoluteString : [NSNull null];
NSArray<id> *responseJSON = @[task.requestID, @(status), headers, responseURL];
[weakSelf sendEventWithName:@"didReceiveNetworkResponse" body:responseJSON];
};

// XHR does not allow you to peek at xhr.response before the response is
// finished. Only when xhr.responseType is set to ''/'text', consumers may
// peek at xhr.responseText. So unless the requested responseType is 'text',
// we only send progress updates and not incremental data updates to JS here.
MXFURLRequestIncrementalDataBlock incrementalDataBlock = nil;
MXFURLRequestProgressBlock downloadProgressBlock = nil;
if (incrementalUpdates) {
    if ([responseType isEqualToString:@"text"]) {
        
        // We need this to carry over bytes, which could not be decoded into text (such as broken UTF-8 characters).
        // The incremental data block holds the ownership of this object, and will be released upon release of the block.
        NSMutableData *incrementalDataCarry = [NSMutableData new];
        
        incrementalDataBlock = ^(NSData *data, int64_t progress, int64_t total) {
            NSUInteger initialCarryLength = incrementalDataCarry.length;
            
            NSString *responseString = [MXFNetworking decodeTextData:data
                                                        fromResponse:task.response
                                                       withCarryData:incrementalDataCarry];
            if (!responseString) {
                MXFLogWarn(@"Received data was not a string, or was not a recognised encoding.");
                return;
            }
            
            // Update progress to include the previous carry length and reduce the current carry length.
            NSArray<id> *responseJSON = @[task.requestID,
                                          responseString,
                                          @(progress + initialCarryLength - incrementalDataCarry.length),
                                          @(total)];
            
            [weakSelf sendEventWithName:@"didReceiveNetworkIncrementalData" body:responseJSON];
        };
    } else {
        downloadProgressBlock = ^(int64_t progress, int64_t total) {
            NSArray<id> *responseJSON = @[task.requestID, @(progress), @(total)];
            [weakSelf sendEventWithName:@"didReceiveNetworkDataProgress" body:responseJSON];
        };
    }
}

MXFURLRequestCompletionBlock completionBlock =
^(NSURLResponse *response, NSData *data, NSError *error) {
    __typeof(self) strongSelf = weakSelf;
    if (!strongSelf) {
        return;
    }
    
    // Unless we were sending incremental (text) chunks to JS, all along, now
    // is the time to send the request body to JS.
    if (!(incrementalUpdates && [responseType isEqualToString:@"text"])) {
        [strongSelf sendData:data
                responseType:responseType
                    response:response
                     forTask:task];
    }
    NSArray *responseJSON = @[task.requestID,
                              MXNullIfNil(error.localizedDescription),
                              error.code == kCFURLErrorTimedOut ? @YES : @NO
    ];
    
    [strongSelf sendEventWithName:@"didCompleteNetworkResponse" body:responseJSON];
    [strongSelf->_tasksByRequestID removeObjectForKey:task.requestID];
};

task = [self networkTaskWithRequest:request completionBlock:completionBlock];
task.downloadProgressBlock = downloadProgressBlock;
task.incrementalDataBlock = incrementalDataBlock;
task.responseBlock = responseBlock;
task.uploadProgressBlock = uploadProgressBlock;

if (task.requestID) {
    if (!_tasksByRequestID) {
        _tasksByRequestID = [NSMutableDictionary new];
    }
    _tasksByRequestID[task.requestID] = task;
    responseSender(@[task.requestID]);
}

[task start];
}

#pragma mark - Public API

- (void)addRequestHandler:(id<MXFNetworkingRequestHandler>)handler
{
    if (!_requestHandlers) {
        _requestHandlers = [NSMutableArray new];
    }
    [_requestHandlers addObject:handler];
}

- (void)addResponseHandler:(id<MXFNetworkingResponseHandler>)handler
{
    if (!_responseHandlers) {
        _responseHandlers = [NSMutableArray new];
    }
    [_responseHandlers addObject:handler];
}

- (void)removeRequestHandler:(id<MXFNetworkingRequestHandler>)handler
{
    [_requestHandlers removeObject:handler];
}

- (void)removeResponseHandler:(id<MXFNetworkingResponseHandler>)handler
{
    [_responseHandlers removeObject:handler];
}

- (MXFNetworkTask *)networkTaskWithRequest:(NSURLRequest *)request completionBlock:(MXFURLRequestCompletionBlock)completionBlock
{
    id<MXFURLRequestHandler> handler = [self handlerForRequest:request];
    if (!handler) {
        MXFLogError(@"No suitable URL request handler found for %@", request.URL);
        return nil;
    }
    
    MXFNetworkTask *task = [[MXFNetworkTask alloc] initWithRequest:request
                                                           handler:handler
                                                     callbackQueue:_methodQueue];
    task.completionBlock = completionBlock;
    return task;
}

#pragma mark - JS API

-(void)sendRequest:(NSDictionary *)query
    responseSender:(MXResponseSenderBlock)responseSender
{
    // TODO: buildRequest returns a cancellation block, but there's currently
    // no way to invoke it, if, for example the request is cancelled while
    // loading a large file to build the request body
    [self buildRequest:query completionBlock:^(NSURLRequest *request) {
        NSString *responseType = [MXFConvert NSString:query[@"responseType"]];
        BOOL incrementalUpdates = [MXFConvert BOOL:query[@"incrementalUpdates"]];
        [self sendRequest:request
             responseType:responseType
       incrementalUpdates:incrementalUpdates
           responseSender:responseSender];
    }];
}

-(void)abortRequest:(nonnull NSNumber *)requestID
{
    [_tasksByRequestID[requestID] cancel];
    [_tasksByRequestID removeObjectForKey:requestID];
}

-(void)clearCookies:(MXResponseSenderBlock)responseSender
{
    NSHTTPCookieStorage *storage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
    if (!storage.cookies.count) {
        responseSender(@[@NO]);
        return;
    }
    
    for (NSHTTPCookie *cookie in storage.cookies) {
        [storage deleteCookie:cookie];
    }
    responseSender(@[@YES]);
}

@end

@implementation MXJSBridge (MXNetworking)

- (MXFNetworking *)networking
{
    return nil;
    //return [self moduleForClass:[MXNetworking class]];
}

@end
