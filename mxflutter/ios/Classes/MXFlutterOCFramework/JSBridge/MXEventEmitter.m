/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "MXEventEmitter.h"
#import "MXFUtil.h"


@implementation MXEventEmitter
{
  NSInteger _listenerCount;
}

+ (NSString *)moduleName
{
  return @"";
}

+ (void)initialize
{
  if (self != [MXEventEmitter class]) {
    NSAssert(MXFClassOverridesInstanceMethod(self, @selector(supportedEvents)),
              @"You must override the `supportedEvents` method of %@", self);
  }
}

- (NSArray<NSString *> *)supportedEvents
{
  return nil;
}

- (void)sendEventWithName:(NSString *)eventName body:(id)data
{
    [self.bridge sendEventWithName:eventName data:data callback:nil];
}

- (void)sendEventWithName:(NSString *)eventName body:(id)data callback:(JSValue*)jsCallbackFun
{
    [self.bridge sendEventWithName:eventName data:data callback:jsCallbackFun];
}

- (void)startObserving
{
  // Does nothing
}

- (void)stopObserving
{
  // Does nothing
}

- (void)dealloc
{
  if (_listenerCount > 0) {
    [self stopObserving];
  }
}

- (void)addListener:(NSString *)eventName;
{
//  if (MXF_DEBUG && ![[self supportedEvents] containsObject:eventName]) {
//    RCTLogError(@"`%@` is not a supported event type for %@. Supported events are: `%@`",
//                eventName, [self class], [[self supportedEvents] componentsJoinedByString:@"`, `"]);
//  }
//  _listenerCount++;
//  if (_listenerCount == 1) {
//    [self startObserving];
//  }
}

- (void)removeListeners:(double)count;
{
//  int currentCount = (int)count;
//  if (MXF_DEBUG && currentCount > _listenerCount) {
//    RCTLogError(@"Attempted to remove more %@ listeners than added", [self class]);
//  }
//  _listenerCount = MAX(_listenerCount - currentCount, 0);
//  if (_listenerCount == 0) {
//    [self stopObserving];
//  }
}

@end
