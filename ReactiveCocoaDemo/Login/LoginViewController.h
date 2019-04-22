//
//  LoginViewController.h
//  ReactiveCocoaDemo
//
//  Created by slj  on 2019/3/15.
//  Copyright © 2019 美柚. All rights reserved.//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *headImg;
@property (weak, nonatomic) IBOutlet UITextField *mobileField;
@property (weak, nonatomic) IBOutlet UITextField *vercodeField;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

NS_ASSUME_NONNULL_END
