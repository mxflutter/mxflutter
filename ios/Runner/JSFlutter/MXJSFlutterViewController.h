//
//  MXJSFlutterViewController.h
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import <Flutter/Flutter.h>
#import "MXJSFlutterEngine.h"



@interface MXJSFlutterViewController : FlutterViewController

@property (nonatomic,strong,readonly) NSString *jsAppName;
@property (nonatomic,strong,readonly) MXJSFlutterEngine *jsFlutterEngine;

//jsAppName 如何为空，只启动JSFlutter运行环境，不运行JS
//可以由Flutter层主动运行JSApp
- (instancetype)initJSAppName:(NSString*)jsAppName;
- (instancetype)initWithEngine:(MXJSFlutterEngine*)jsFlutterEngine jsAppName:(NSString*)jsAppName;

//Native代码启动JSApp，启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
- (void)runJSApp:(NSString*)appName;


//MARK: - flutter -> Native
//由Flutter 代码启动JSApp。 可以用在先显示Dart页面，然后路由调转到JS页面
//启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
-(void)callNativeRunJSApp:(id)arguments;

//MARK: - native -> flutter
//--------------------------------------------
//调用Flutter切换到JSWidget，显示JS渲染的内容
- (void)callFlutterReloadAppWithJSWidgetData:(NSString*)widgetData;
- (void)callFlutterReloadAppWithRouteName:(NSString*)routeName  widgetData:(NSString*)widgetData;
- (void)callFlutterMethodChannelInvoke:(NSString*)channelName
                             methodName:(NSString*)methodName
                                 params:(NSDictionary *)params
                               callback:(void(^)(id _Nullable result))callback;
@end


