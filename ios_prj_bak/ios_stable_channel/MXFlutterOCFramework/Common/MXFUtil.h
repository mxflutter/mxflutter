//
//  MXFUtil.h
//  MXFlutter
//
//  Created by soap on 2020/3/14.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MXJSFlutterDefines.h"


NS_ASSUME_NONNULL_BEGIN

#define MXAssertParam(name) NSAssert1(name, @"'%s' is a required parameter", #name)

#define MXNullIfNil(value) (value ?: (id)kCFNull)
#define MXNilIfNull(value) \
({ __typeof__(value) t = (value); (id)t == (id)kCFNull ? (__typeof(value))nil : t; })





MX_EXTERN NSString *const MXErrorDomain ;

MX_EXTERN NSError * MXFErrorWithMessage(NSString *message);
MX_EXTERN BOOL MXFClassOverridesInstanceMethod(Class cls, SEL selector);
MX_EXTERN BOOL MXFIsBundleAssetURL(NSURL *__nullable imageURL);

@interface MXFUtil : NSObject




@end

NS_ASSUME_NONNULL_END
