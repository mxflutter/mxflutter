/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <Foundation/Foundation.h>

#import "MXJSFlutterDefines.h"
#import <JavaScriptCore/JavaScriptCore.h>

@class MXJSBridge;

/**
 * The type of a block that is capable of sending a response to a bridged
 * operation. Use this for returning callback methods to JS.
 */
typedef void (^MXResponseSenderBlock)(NSArray *response);

/**
 * The type of a block that is capable of sending an error response to a
 * bridged operation. Use this for returning error information to JS.
 */
typedef void (^MXResponseErrorBlock)(NSError *error);

/**
 * Block that bridge modules use to resolve the JS promise waiting for a result.
 * Nil results are supported and are converted to JS's undefined value.
 */
typedef void (^MXPromiseResolveBlock)(id result);

/**
 * Block that bridge modules use to reject the JS promise waiting for a result.
 * The error may be nil but it is preferable to pass an NSError object for more
 * precise error messages.
 */
typedef void (^MXPromiseRejectBlock)(NSString *code, NSString *message, NSError *error);

/**
 * Provides the interface needed to register a bridge module.
 */
@protocol MXBridgeModule <NSObject>

/**
 * Place this macro in your class implementation to automatically register
 * your module with the bridge when it loads. The optional js_name argument
 * will be used as the JS module name. If omitted, the JS module name will
 * match the Objective-C class name.
 */
#define MX_EXPORT_MODULE(js_name)           \
    MX_EXTERN void MXRegisterModule(Class); \
    +(NSString *)moduleName {               \
        return @ #js_name;                  \
    }                                       \
    +(void)load {                           \
        MXRegisterModule(self);             \
    }

// Module register self in jsContext MXNativeJSFlutterApp
+ (id<MXBridgeModule>)registerModuleInMXFlutterJSContext:(JSValue *)jsAPPValue bridge:(MXJSBridge *)bridge;

// Implemented by MX_EXPORT_MODULE
+ (NSString *)moduleName;

@optional

/**
 * A reference to the MXJSBridge. Useful for modules that require access
 * to bridge features, such as sending events or making JS calls. This
 * will be set automatically by the bridge when it initializes the module.
 * To implement this in your module, just add `@synthesize bridge = _bridge;`
 * If using Swift, add `@objc var bridge: RCTBridge!` to your module.
 */
@property (nonatomic, weak, readonly) MXJSBridge *bridge;

/**
 * The queue that will be used to call all exported methods. If omitted, this
 * will call on a default background queue, which is avoids blocking the main
 * thread.
 *
 * If the methods in your module need to interact with UIKit methods, they will
 * probably need to call those on the main thread, as most of UIKit is main-
 * thread-only. You can tell React Native to call your module methods on the
 * main thread by returning a reference to the main queue, like this:
 *
 * - (dispatch_queue_t)methodQueue
 * {
 *   return dispatch_get_main_queue();
 * }
 *
 * If you don't want to specify the queue yourself, but you need to use it
 * inside your class (e.g. if you have internal methods that need to dispatch
 * onto that queue), you can just add `@synthesize methodQueue = _methodQueue;`
 * and the bridge will populate the methodQueue property for you automatically
 * when it initializes the module.
 */
@property (nonatomic, strong, readonly) dispatch_queue_t methodQueue;

@end
