//
//  MXJSFlutterEngine.h
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FlutterEngine;
@class MXJSEngine;

NS_ASSUME_NONNULL_BEGIN
/*
 *MXJSFlutterEngine
 *负责Flutter/Native/JS 三方衔接
 *管理FluterJS代码
 */
@interface MXJSFlutterEngine : NSObject

@property (nonatomic, weak) FlutterEngine* flutterEngine;
@property (nonatomic, weak) MXJSEngine* jsEngine;

@property (nonatomic,strong,readonly) NSString *jsAppName;

- (void)runApp:(NSString*)appName pageName:(NSString*)pageName;

//jsAppName 如何为空，只启动JSFlutter运行环境，不运行JS
//可以由Flutter层主动运行JSApp
- (instancetype)initJSAppName:(NSString*)jsAppName;

//Native代码启动JSApp，启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
- (void)runJSApp:(NSString*)appName;

//MARK: - native -> flutter
//--------------------------------------------
//调用Flutter切换到JSWidget，显示JS渲染的内容
- (void)callFlutterReloadAppWithJSWidgetData:(NSString*)widgetData;
- (void)callFlutterReloadAppWithRouteName:(NSString*)routeName  widgetData:(NSString*)widgetData;
- (void)callFlutterMethodChannelInvoke:(NSString*)channelName
                             methodName:(NSString*)methodName
                                 params:(NSDictionary *)params
                               callback:(void(^)(id _Nullable result))callback;
- (void)callFlutterEventChannelReceiveBroadcastStreamListenInvoke:(NSString * _Nonnull)channelName
                                                      streamParam:(NSString * _Nullable)streamParam
                                                         onDataId:(NSString * _Nullable)onDataId
                                                        onErrorId:(NSString * _Nullable)onErrorId
                                                         onDoneId:(NSString * _Nullable)onDoneId
                                                    cancelOnError:(NSNumber * _Nullable)cancelOnError;


@end

NS_ASSUME_NONNULL_END
