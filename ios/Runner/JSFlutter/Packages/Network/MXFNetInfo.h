/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <SystemConfiguration/SystemConfiguration.h>

#import "MXEventEmitter.h"
#import "MXBridgeModule.h"

@protocol MXFNetInfoJSExport <NSObject,JSExport>

JSExportAs(getCurrentConnectivity,
        -(void)getCurrentConnectivity:(MXPromiseResolveBlock)resolve
        reject:(__unused MXPromiseRejectBlock)reject
           );


@end


@interface MXFNetInfo : MXEventEmitter <MXBridgeModule ,MXFNetInfoJSExport>

- (instancetype)initWithHost:(NSString *)host;

@end
