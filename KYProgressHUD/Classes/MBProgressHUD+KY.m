//
//  MBProgressHUD+XC.m
//  xc_app_rn
//
//  Created by 王英辉 on 2019/5/14.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "MBProgressHUD+KY.h"
#import "KYImage.h"

@implementation MBProgressHUD (KY)

#pragma mark 显示信息
+ (void)showWithLable:(NSString * _Nullable)text
         detailsLabel:(NSString * _Nullable)detailsLabel
                 icon:(NSString * _Nullable)icon
                 view:(UIView * _Nullable)view
           afterDelay:(NSTimeInterval)afterDelay
{
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.animationType = MBProgressHUDAnimationFade;
    hud.bezelView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
    hud.contentColor = [UIColor whiteColor];
    hud.label.text = text;
//    hud.bezelView.opaque = 0.8;
    hud.userInteractionEnabled = NO;
    hud.label.font = [UIFont systemFontOfSize:16];
    hud.margin = 8;
    hud.minSize = CGSizeMake(100, 100);
    hud.detailsLabel.text = detailsLabel;
    
    hud.detailsLabel.font = [UIFont systemFontOfSize:14];
    
    // 设置图片
    hud.customView = [[UIImageView alloc] initWithImage:[KYImage imageNamed:icon]];
    
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 2秒之后再消失
    if (afterDelay == 0) {
        afterDelay = 2;
    }
    [hud hideAnimated:YES afterDelay:afterDelay];
}

#pragma mark 显示信息
+ (void)showWithLabel:(NSString * _Nullable)text details:(NSString * _Nullable)details {
    [self showWithLabel:text details:details view:nil afterDelay:2];
}

+ (void)showWithDetails:(NSString * _Nullable)details afterDelay:(NSTimeInterval)afterDelay {
    [self showWithLabel:nil details:details view:nil afterDelay:afterDelay];
}
    
+ (void)showWithDetails:(NSString * _Nullable)details {
    [self showWithLabel:nil details:details];
}

+ (void)showWithLabel:(NSString * _Nullable)text
              details:(NSString * _Nullable)details
                 view:(UIView * _Nullable)view
           afterDelay:(NSTimeInterval)afterDelay
{
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.bezelView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
    hud.contentColor = [UIColor whiteColor];
    hud.margin = 10;
    hud.label.text = text;
    hud.detailsLabel.text = details;
    
    // 再设置模式
    hud.mode = MBProgressHUDModeText;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 2秒之后再消失
    if (afterDelay == 0) {
        afterDelay = 2;
    }
    [hud hideAnimated:YES afterDelay:afterDelay];
}

#pragma mark 显示错误信息
+ (void)showError:(NSString * _Nullable)error toView:(UIView * _Nullable)view{
    [self showWithLable:nil detailsLabel:error icon:@"tosat_error_icon" view:view afterDelay:2];
}
+ (void)showErrorWithLabel:(NSString * _Nullable)label detailsLabel:(NSString * _Nullable)detailsLabel toView:(UIView *)view
{
    [self showWithLable:label detailsLabel:detailsLabel icon:@"tosat_error_icon" view:view afterDelay:2];
}

+ (void)showSuccess:(NSString * _Nullable)success toView:(UIView *)view
{
    [self showWithLable:nil detailsLabel:success icon:@"tosat_success_icon" view:view afterDelay:2];
}

+ (void)showSuccessWithLabel:(NSString * _Nullable)label detailsLabel:(NSString * _Nullable)detailsLabel  toView:(UIView * _Nullable)view
{
    [self showWithLable:label detailsLabel:detailsLabel icon:@"tosat_success_icon" view:view afterDelay:2];
}

#pragma mark 显示一些信息
+ (MBProgressHUD *)showMessage:(NSString * _Nullable)message toView:(UIView * _Nullable)view {
    
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.animationType = MBProgressHUDAnimationFade;
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.label.text = message;
    hud.label.font = [UIFont systemFontOfSize:14];
    hud.bezelView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
    hud.contentColor = [UIColor whiteColor];
    hud.minSize = CGSizeMake(70.f, 70.f);
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // YES代表需要蒙版效果
    hud.backgroundView.hidden = YES;
    
    return hud;
}

+ (void)showSuccess:(NSString * _Nullable)success
{
    [self showSuccessWithLabel:success detailsLabel:nil toView:nil];
}

+ (void)showError:(NSString * _Nullable)error
{
    [self showError:error toView:nil];
}

+ (MBProgressHUD *)showMessage:(NSString * _Nullable)message
{
    return [self showMessage:message toView:nil];
}

+ (void)hideHUDForView:(UIView * _Nullable)view
{
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD
{
    [self hideHUDForView:nil];
}

@end
