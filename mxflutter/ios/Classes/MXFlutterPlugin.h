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

@end
