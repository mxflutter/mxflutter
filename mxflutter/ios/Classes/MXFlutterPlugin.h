#import <Flutter/Flutter.h>
#import "MXJSFlutterEngine.h"

@interface MXFlutterPlugin : NSObject<FlutterPlugin>

@property(nonatomic,strong) MXJSFlutterEngine* mxEngine;
@property(nonatomic,strong) NSObject<FlutterPluginRegistrar>* flutterRegistrar;

+ (MXFlutterPlugin*)shareInstance;

/// 如果需要动态修改jsframework ，通过此API 修改jsframework路径，没有设置默认使用打包到ipa包里的framework
/// 设置mxflutter jsframework代码的路径
/// [GeneratedPluginRegistrant registerWithRegistry:self]; 运行前设置
+ (void)setJSFramewrokPath:(NSString*)path;


///  jsApp的路径一般直接通过 Flutter MXJSFlutter.getInstance().runJSApp()直接传入要运行的jsapp路径
/// 暴露这个接口是为了，自动支持模拟器热重载，路径重定向到iMac 开发机地址，以支持热重载。
/// [GeneratedPluginRegistrant registerWithRegistry:self]; 运行前设置
+ (void)setJSAppPath:(NSString*)path jsAppSearchPathList:(NSArray*)pathArray;

@end
