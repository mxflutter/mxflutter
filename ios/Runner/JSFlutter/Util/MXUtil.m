//
//  MXUtil.m
//  Runner
//
//  Created by soap on 2020/3/14.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import "MXUtil.h"
#import <objc/message.h>
#import <objc/runtime.h>

static NSError *MXErrorWithMessage(NSString *message)
{
  NSDictionary<NSString *, id> *errorInfo = @{NSLocalizedDescriptionKey: message};
  return [[NSError alloc] initWithDomain:MXErrorDomain code:0 userInfo:errorInfo];
}

static BOOL MXIsImageAssetsPath(NSString *path)
{
  NSString *extension = [path pathExtension];
  return [extension isEqualToString:@"png"] || [extension isEqualToString:@"jpg"];
}

BOOL MXClassOverridesInstanceMethod(Class cls, SEL selector)
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


@implementation MXUtil




@end
