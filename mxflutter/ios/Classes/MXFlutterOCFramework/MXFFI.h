//
//  MXFFI.h
//  MXFlutterOCFramework
//
//  Created by lucaliu on 2020/10/12.
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MXFFI : NSObject

/// 同步属性回调
const char *syncPropsCallback(char* args);

@end

NS_ASSUME_NONNULL_END
