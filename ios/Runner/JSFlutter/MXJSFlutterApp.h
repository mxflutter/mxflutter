//
//  MXJSAppProxy.h
//  Runner
//
//  Created by soapyang on 2018/12/24.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "MXJSFlutterEngine.h"

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

- (instancetype)initWithAppName:(NSString*)AppName engine:(MXJSFlutterEngine*)jsFlutterEngine appRootPath:(NSString* _Nullable)appRootPath;

- (void)runApp;
- (void)runAppWithPageName:(NSString* _Nullable)PageName;

- (void)exitApp;


@end
