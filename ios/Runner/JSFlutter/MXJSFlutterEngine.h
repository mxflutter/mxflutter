//
//  MXJSFlutterEngine.h
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MXJSEngine.h"

@class MXJSFlutterViewController;
@class FlutterEngine;

NS_ASSUME_NONNULL_BEGIN
/*
 *MXJSFlutterEngine
 *负责Flutter/Native/JS 三方衔接
 *管理FluterJS代码
 */
@interface MXJSFlutterEngine : NSObject

@property (nonatomic, strong) MXJSFlutterViewController* flutterViewController;

@property (nonatomic, weak) FlutterEngine* flutterEngine;

- (instancetype)initRootPath:(NSString *)appRootPath;
- (void)runApp:(NSString*)appName pageName:(NSString*)pageName;

@end

NS_ASSUME_NONNULL_END
