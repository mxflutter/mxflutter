/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

#if TARGET_OS_IPHONE && WEBKIT_IOS_10_APIS_AVAILABLE
#import <WebKit/WebKit.h>
#endif

#import "MXJSFlutterDefines.h"

/**
 * This class provides a collection of conversion functions for mapping
 * JSON objects to native types and classes.
 */
@interface MXFConvert : NSObject

+ (id)id:(id)json;

+ (BOOL)BOOL:(id)json;
+ (double)double:(id)json;
+ (float)float:(id)json;
+ (int)int:(id)json;

+ (int64_t)int64_t:(id)json;
+ (uint64_t)uint64_t:(id)json;

+ (NSInteger)NSInteger:(id)json;
+ (NSUInteger)NSUInteger:(id)json;

+ (NSArray *)NSArray:(id)json;
+ (NSDictionary *)NSDictionary:(id)json;
+ (NSString *)NSString:(id)json;
+ (NSNumber *)NSNumber:(id)json;

+ (NSSet *)NSSet:(id)json;
+ (NSData *)NSData:(id)json;

+ (NSURLRequestCachePolicy)NSURLRequestCachePolicy:(id)json;
+ (NSURL *)NSURL:(id)json;
+ (NSURLRequest *)NSURLRequest:(id)json;

+ (NSDate *)NSDate:(id)json;
+ (NSLocale *)NSLocale:(id)json;
+ (NSTimeZone *)NSTimeZone:(id)json;
+ (NSTimeInterval)NSTimeInterval:(id)json;

+ (CGFloat)CGFloat:(id)json;
+ (CGPoint)CGPoint:(id)json;
+ (CGSize)CGSize:(id)json;
+ (CGRect)CGRect:(id)json;

+ (UIColor *)UIColor:(id)json;
+ (CGColorRef)CGColor:(id)json CF_RETURNS_NOT_RETAINED;

+ (NSArray<NSArray *> *)NSArrayArray:(id)json;
+ (NSArray<NSString *> *)NSStringArray:(id)json;
+ (NSArray<NSArray<NSString *> *> *)NSStringArrayArray:(id)json;
+ (NSArray<NSDictionary *> *)NSDictionaryArray:(id)json;
+ (NSArray<NSURL *> *)NSURLArray:(id)json;
+ (NSArray<NSNumber *> *)NSNumberArray:(id)json;
+ (NSArray<UIColor *> *)UIColorArray:(id)json;


@end



/**
 * This macro is used for logging conversion errors. This is just used to
 * avoid repeating the same boilerplate for every error message.
 */
#define MXFLogConvertError(json, typeName) \
MXFLogError(@"JSON value '%@' of type %@ cannot be converted to %@", \
json, [json classForCoder], typeName)

/**
 * This macro is used for creating simple converter functions that just call
 * the specified getter method on the json value.
 */
#define MXF_CONVERTER(type, name, getter) \
MXF_CUSTOM_CONVERTER(type, name, [json getter])

/**
 * This macro is used for creating converter functions with arbitrary logic.
 */
#define MXF_CUSTOM_CONVERTER(type, name, code) \
+ (type)name:(id)json               \
{                                              \
  if (!MXF_DEBUG) {                            \
    return code;                               \
  } else {                                     \
    @try {                                     \
      return code;                             \
    }                                          \
    @catch (__unused NSException *e) {         \
      MXFLogConvertError(json, @#type);        \
      json = nil;                              \
      return code;                             \
    }                                          \
  }                                            \
}

/**
 * This macro is similar to MXF_CONVERTER, but specifically geared towards
 * numeric types. It will handle string input correctly, and provides more
 * detailed error reporting if an invalid value is passed in.
 */
#define MXF_NUMBER_CONVERTER(type, getter) \
MXF_CUSTOM_CONVERTER(type, type, [MXF_DEBUG ? [self NSNumber:json] : json getter])


/**
 * When using MXF_ENUM_CONVERTER in ObjC, the compiler is OK with us returning
 * the underlying NSInteger/NSUInteger. In ObjC++, this is a type mismatch and
 * we need to explicitly cast the return value to expected enum return type.
 */
#ifdef __cplusplus
#define _MXF_CAST(type, expr) static_cast<type>(expr)
#else
#define _MXF_CAST(type, expr) expr
#endif

/**
 * This macro is used for creating converters for enum types.
 */
#define MXF_ENUM_CONVERTER(type, values, default, getter) \
+ (type)type:(id)json                          \
{                                                         \
  static NSDictionary *mapping;                           \
  static dispatch_once_t onceToken;                       \
  dispatch_once(&onceToken, ^{                            \
    mapping = values;                                     \
  });                                                     \
  return _MXF_CAST(type, [RCTConvertEnumValue(#type, mapping, @(default), json) getter]); \
}


/**
 * This macro is used for creating explicitly-named converter functions
 * for typed arrays.
 */
#define MXF_ARRAY_CONVERTER_NAMED(type, name)          \
+ (NSArray<type *> *)name##Array:(id)json   \
{                                                      \
  return RCTConvertArrayValue(@selector(name:), json); \
}

/**
 * This macro is used for creating converter functions for typed arrays.
 * MXF_ARRAY_CONVERTER_NAMED may be used when type contains characters
 * which are disallowed in selector names.
 */
#define MXF_ARRAY_CONVERTER(type) MXF_ARRAY_CONVERTER_NAMED(type, type)
