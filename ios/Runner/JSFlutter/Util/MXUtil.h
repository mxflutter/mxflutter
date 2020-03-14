//
//  MXUtil.h
//  Runner
//
//  Created by soap on 2020/3/14.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

NSString *const MXErrorDomain = @"MXFlutterErrorDomain";

static NSError * MXErrorWithMessage(NSString *message);
static BOOL MXIsImageAssetsPath(NSString  * _Nullable path);

@interface MXUtil : NSObject




@end

NS_ASSUME_NONNULL_END
