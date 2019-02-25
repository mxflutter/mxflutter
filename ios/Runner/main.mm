#import <Flutter/Flutter.h>
#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "DartVmManager.h"

int main(int argc, char* argv[]) {
    @autoreleasepool {
        [[DartVmManager sharedInstance] setupMainOptions:argc argv:argv];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
