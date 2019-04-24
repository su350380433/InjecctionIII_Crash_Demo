//
//  LoginSucessVC.m
//  ReactiveCocoaDemo
//
//  Created by S S on 2019/4/23.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "LoginSucessVC.h"

@interface LoginSucessVC ()

@end

@implementation LoginSucessVC

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *btn = [UIButton new];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)buttonAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
