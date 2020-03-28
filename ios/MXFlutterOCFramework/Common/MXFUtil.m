//
//  MXUtil.m
//  MXFlutter
//
//  Created by soap on 2020/3/14.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import "MXFUtil.h"
#import <objc/message.h>
#import <objc/runtime.h>

#import <zlib.h>

NSString *const MXErrorDomain = @"MXFlutterErrorDomain";

NSError *MXFErrorWithMessage(NSString *message)
{
  NSDictionary<NSString *, id> *errorInfo = @{NSLocalizedDescriptionKey: message};
  return [[NSError alloc] initWithDomain:MXErrorDomain code:0 userInfo:errorInfo];
}

static BOOL MXIsImageAssetsPath(NSString *path)
{
  NSString *extension = [path pathExtension];
  return [extension isEqualToString:@"png"] || [extension isEqualToString:@"jpg"];
}

static NSString *MXFRelativePathForURL(NSString *basePath, NSURL *__nullable URL)
{
  if (!URL.fileURL) {
    // Not a file path
    return nil;
  }
  NSString *path = [NSString stringWithUTF8String:[URL fileSystemRepresentation]];
  if (![path hasPrefix:basePath]) {
    // Not a bundle-relative file
    return nil;
  }
  path = [path substringFromIndex:basePath.length];
  if ([path hasPrefix:@"/"]) {
    path = [path substringFromIndex:1];
  }
  return path;
}


NSString *__nullable MXFBundlePathForURL(NSURL *__nullable URL)
{
  return MXFRelativePathForURL([[NSBundle mainBundle] resourcePath], URL);

}


BOOL MXFIsBundleAssetURL(NSURL *__nullable imageURL)
{
  return MXIsImageAssetsPath(MXFBundlePathForURL(imageURL));
}






BOOL MXFClassOverridesInstanceMethod(Class cls, SEL selector)
{
  unsigned int numberOfMethods;
  Method *methods = class_copyMethodList(cls, &numberOfMethods);
  for (unsigned int i = 0; i < numberOfMethods; i++) {
    if (method_getName(methods[i]) == selector) {
      free(methods);
      return YES;
    }
  }
  free(methods);
  return NO;
}

NSURL *MXDataURL(NSString *mimeType, NSData *data)
{
  return [NSURL URLWithString:
          [NSString stringWithFormat:@"data:%@;base64,%@", mimeType,
           [data base64EncodedStringWithOptions:(NSDataBase64EncodingOptions)0]]];
}


@implementation MXFUtil




@end
