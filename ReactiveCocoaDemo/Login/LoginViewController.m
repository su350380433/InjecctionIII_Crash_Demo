//
//  LoginViewController.m
//  ReactiveCocoaDemo
//
//  Created by slj  on 2019/3/15.
//  Copyright © 2019 美柚. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginSucessVC.h"
#import <NotificationCenter/NotificationCenter.h>
#import <ReactiveObjC/ReactiveObjC.h>
@interface LoginViewController ()


@end

@implementation LoginViewController


+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    UIViewController *viewController = [super allocWithZone:zone];

    @weakify(viewController)
        [[viewController
            rac_signalForSelector:@selector(viewDidLoad)]
            subscribeNext:^(id x) {
                @strongify(viewController)

                    [viewController performSelector:@selector(bindViewModel)
                                         withObject:nil
                                         afterDelay:0];
            }];

    return viewController;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        //注册inject 成功通知 你可以处理的基类里面，然后对应出一个类似injected的方法就行了。
        //        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(injectionNotification:) name:@"INJECTION_BUNDLE_NOTIFICATION" object:nil];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor]; //注释

    [self bindViewModel];
}
- (IBAction)click:(id)sender {
    //改这个颜色也行
    LoginSucessVC *VC = [[LoginSucessVC alloc] init];
    [self presentViewController:VC animated:YES completion:nil];
}

- (void)bindViewModel {
    @weakify(self);
    [self.mobileField.rac_textSignal subscribeNext:^(NSString *_Nullable x) {
        @strongify(self);
        NSLog(@"%@", x);
    }];
}

//通知注册的方法
- (void)injectionNotification:(NSNotification *)notification {

    //直接改这个颜色代码也行 cm+ s 也行
    //        self.view.backgroundColor = [UIColor whiteColor];//注释
    //    TODO 应该有整体重新i加载
    //    [self viewDidLoad];
}


@end
