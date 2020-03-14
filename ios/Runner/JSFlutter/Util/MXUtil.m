//
//  MXUtil.m
//  Runner
//
//  Created by soap on 2020/3/14.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import "MXUtil.h"

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

@implementation MXUtil




@end
