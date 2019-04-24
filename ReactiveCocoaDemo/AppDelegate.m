//
//  AppDelegate.m
//  ReactiveCocoaDemo
//
//  Created by 于朝盼 on 2019/3/15.
//  Copyright © 2019 美柚. All rights reserved.//

#import "AppDelegate.h"
#import "InjectionManager.h"
#import "LoginViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //    [[NSBundle bundleWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection10.bundle"] load];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    LoginViewController *login = [[LoginViewController alloc] init];
    self.window.rootViewController = login;


    UIApplication *app = [UIApplication sharedApplication];
    app.statusBarStyle = UIStatusBarStyleDefault;


    [self.window makeKeyAndVisible];
    return YES;
}


@end
