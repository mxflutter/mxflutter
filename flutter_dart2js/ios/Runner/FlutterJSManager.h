//
//  FlutterJSManager.h
//  Runner
//
//  Created by lucaliu on 2019/11/16.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlutterJSManager : NSObject

+ (instancetype)sharedInstance;

- (void)runMainJS;

@end

NS_ASSUME_NONNULL_END
