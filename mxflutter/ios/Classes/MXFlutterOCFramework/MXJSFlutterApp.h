//
//  MXJSAppProxy.h
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/24.
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "MXJSExecutor.h"


@class MXJSFlutterEngine;
@class MXJSEngine;
@class MXJSExecutor;

NS_ASSUME_NONNULL_BEGIN

@protocol MXJSFlutterAppJSExport <NSObject,JSExport>

JSExportAs(setCurrentJSApp,
         - (void)jsAPISetCurrentJSApp:(JSValue*)jsAppObj
           );

JSExportAs(callFlutterReloadApp, //WithApp  InitPageName  Data
           - (void)jsAPICallFlutterReloadApp:(JSValue*)jsAppObj  widgetData:(NSString*)data
           );


//js -> flutter 直接json交互
JSExportAs(callFlutterWidgetChannel,
           - (void)callFlutterWidgetChannelWithMethodName:(NSString*)method arguments:(id)arguments
           );

@end



@interface MXJSFlutterApp : NSObject <MXJSFlutterAppJSExport>

//唯一标示
@property (nonatomic, strong) NSString *appName;
@property (nonatomic, strong) NSString *appRootPath;
@property (nonatomic, strong) NSString *mainJSPath;

@property (nonatomic, strong, nullable) MXJSEngine *jsEngine;
@property (nonatomic, strong) JSValue * _Nullable jsAppObj;

@property (nonatomic, weak) MXJSFlutterEngine * _Nullable jsFlutterEngine;

- (instancetype)initWithAppPath:(NSString*)appRootPath jsAppSearchPathList:(NSArray*)pathArray  engine:(MXJSFlutterEngine*)jsFlutterEngine ;

- (void)runApp;
- (void)exitApp;

- (JSContext*)mainJSContext;
- (void)invokeJSValue:(JSValue *)jsValue method:(NSString *)method args:(NSArray *)args callback:(MXJSValueCallback )callback;
- (void)executeBlockOnJSThread:(dispatch_block_t)block;

@end

NS_ASSUME_NONNULL_END
