#import "MXFlutterPlugin.h"

@implementation MXFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    
    static MXJSFlutterEngine *mxEngineInstance = nil;
    
    if (mxEngineInstance != nil) {
        [mxEngineInstance dispose];
        mxEngineInstance = nil;
    }
    
    mxEngineInstance = [[MXJSFlutterEngine alloc] initWithFlutterMessager:registrar.messenger];
    
    FlutterMethodChannel* channel = [FlutterMethodChannel
                                     methodChannelWithName:@"mxflutter"
                                     binaryMessenger:[registrar messenger]];
    MXFlutterPlugin* instance = [[MXFlutterPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    if ([@"getPlatformVersion" isEqualToString:call.method]) {
        result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
    } else {
        result(FlutterMethodNotImplemented);
    }
}

@end

