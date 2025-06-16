#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
@import FirebaseCore;
@import FirebaseAnalytics;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
  [FIRApp configure];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (id) getFirebaseAnalyticsInstace
{
    return [FIRAnalytics class];
}

@end
