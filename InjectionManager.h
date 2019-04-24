//
//  InjectionManager.h
//  Test
//
//  Created by 唐林 on 2018/12/4.
//  Copyright © 2018年 唐林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#ifdef DEBUG                //Debug下才生效
#if TARGET_IPHONE_SIMULATOR //模拟器下才生效

NS_ASSUME_NONNULL_BEGIN

///配合工具 InjectionIII 使用
@interface InjectionManager : NSObject

/**
 Start Injection (在didFinishLaunchingWithOptions开启)
 */
+ (void)inject;

@end

@interface NSObject (InjectionIII)


/**
 获取当前窗台VC

 @return UIViewControllerUi
 */
+ (UIViewController *)ijc_getCurrentViewController;

+ (UIViewController *)ijc_viewControllerSupportView:(UIView *)view;

+ (UIView *)ijc_getMainView;
@end


NS_ASSUME_NONNULL_END

#endif
#endif
