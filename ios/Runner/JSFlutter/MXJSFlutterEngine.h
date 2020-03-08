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

- (void)runApp:(NSString*)appName ;


///初始化MXFlutter主引擎，指定运行在哪个FlutterEngine之上
- (instancetype)initWithEngine:(FlutterEngine*)engine;

///运行JS代码，JS业务代码放置在一个文件夹中，并且有main.js文件，运行创建MXJSFlutterApp
///FlutterEngine/Native/JSApp 三者结合起来
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
