//
//  MXJSFlutterEngine.m
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import "MXJSFlutterEngine.h"
#import "MXJSFlutterApp.h"



//enum JSFlutterAppState {
//
//};


@interface MXJSFlutterEngine ()

@property (nonatomic,strong) NSString *rootPath;
@property (nonatomic,strong) MXJSFlutterApp *currentApp;
@property (nonatomic,strong) NSMutableDictionary<NSString*,MXJSFlutterApp*> *unsetupJSApp;

@end

@implementation MXJSFlutterEngine

- (instancetype)initRootPath:(NSString *)rootPath
{
    if (self = [super init])
    {
        self.rootPath = rootPath;
        self.unsetupJSApp = [NSMutableDictionary dictionary];
    }
    return self;
    
}

- (void)setup
{
    [self unsetup];
    
    

}

- (void)unsetup{
    if (self.currentApp) {
        [self.currentApp exitApp];
        self.currentApp = nil;
        //self.unsetupJSApp[self.currentApp.appName] = self.currentApp;
    }
}



- (void)runApp:(NSString*)appName pageName:(NSString*)pageName
{
    [self setup];
    
    NSString *appRootPath = [self.rootPath stringByAppendingPathComponent:appName];
    self.currentApp  = [[MXJSFlutterApp alloc] initWithAppName:appName engine:self appRootPath:appRootPath];
    
    [self.currentApp runAppWithPageName:pageName];
}

- (BOOL)showPage:(NSString*)pageName
{
   
    return YES;
}

@end
