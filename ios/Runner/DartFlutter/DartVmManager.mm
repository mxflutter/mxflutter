//
//  DartVmManager.m
//  Runner
//
//  Created by consoar on 2019/1/22.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "DartVmManager.h"
#import "DartVmLiteDylib/DartVM.hpp"

static DartVM *dartVMSharedInstance = NULL;
static BOOL hasInitDartVM = NO;
int argcValue;
char ** argvValue;

@implementation DartVmManager

+ (instancetype)sharedInstance {
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)setupMainOptions:(int)argc argv:(char* [])argv {
    argcValue = argc;
    argvValue = argv;
}

- (DartVM *)getDartVM {
    return dartVMSharedInstance;
}

- (void)initializeVM:(NSString *)mainFileName {
    if (DART_FLUTTER_APP_DEBUG) { //如果启用DartFlutter调试模式就不要运行自己的VM了，使用Flutter的
        return;
    }
    NSString *rootDir = [DARTFLUTTER_SRC_BASE_DIR stringByAppendingPathComponent:DARTFLUTTER_SRC_DIR];
    dartVMSharedInstance = new DartVM(rootDir.UTF8String, mainFileName.UTF8String);
    if (!hasInitDartVM) { //DartVM是单例不要重复
        hasInitDartVM = YES;
        dartVMSharedInstance->initializeVM(argcValue, argvValue);
    }
}

@end
