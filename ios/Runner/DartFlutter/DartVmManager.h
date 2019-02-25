//
//  DartVmManager.h
//  Runner
//
//  Created by consoar on 2019/1/22.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DartVmLiteDylib/DartVM.hpp"
#import "MXJSFlutter.h"

@interface DartVmManager : NSObject

+ (instancetype)sharedInstance;

- (void)setupMainOptions:(int)argc argv:(char* [])argv;

- (void)initializeVM:(NSString *)mainFileName;

- (DartVM *)getDartVM;

@end
