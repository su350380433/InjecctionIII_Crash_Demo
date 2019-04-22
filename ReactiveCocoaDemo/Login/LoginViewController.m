//
//  LoginViewController.m
//  ReactiveCocoaDemo
//
//  Created by slj  on 2019/3/15.
//  Copyright © 2019 美柚. All rights reserved.
//

#import "LoginViewController.h"
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

- (void)injected {
    [self viewDidLoad];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    [self bindViewModel];
}

- (void)bindViewModel {
    @weakify(self);
    [self.mobileField.rac_textSignal subscribeNext:^(NSString *_Nullable x) {
        @strongify(self);
        NSLog(@"%@", x);
    }];
}

@end
