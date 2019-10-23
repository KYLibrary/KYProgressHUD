//
//  MBProgressHUD+XC.h
//  xc_app_rn
//
//  Created by 王英辉 on 2019/5/14.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "MBProgressHUD.h"

NS_ASSUME_NONNULL_BEGIN

@interface MBProgressHUD (KY)

/**
 单独toast提示，自动隐藏，默认2秒后隐藏

 @param details 详情
 */
+ (void)showWithDetails:(NSString * _Nullable)details;
+ (void)showWithDetails:(NSString * _Nullable)details afterDelay:(NSTimeInterval)afterDelay;

/**
 单独toast提示，自动隐藏，默认2秒后隐藏

 @param text 标题
 @param details 详情
 */
+ (void)showWithLabel:(NSString * _Nullable)text details:(NSString * _Nullable)details;

/**
 单独toast提示，自动隐藏，默认2秒后隐藏
 
 @param text 标题
 @param details 详情
 @param view 添加到的view
 @param afterDelay 延迟隐藏秒数，默认2秒
 */
+ (void)showWithLabel:(NSString * _Nullable)text details:(NSString * _Nullable)details view:(UIView * _Nullable)view afterDelay:(NSTimeInterval)afterDelay;
    
/**
 toast提示，带图片，自动隐藏，默认2秒后隐藏

 @param text 标题
 @param detailsLabel 详情
 @param icon 提示图片
 @param view 添加到的view
 */
+ (void)showWithLable:(NSString * _Nullable)text detailsLabel:(NSString * _Nullable)detailsLabel icon:(NSString * _Nullable)icon view:(UIView * _Nullable)view afterDelay:(NSTimeInterval)afterDelay;


/**
 成功toast提示，带成功提示图片，自动隐藏，默认2秒后隐藏

 @param success 成功信息
 @param view 添加到的view
 */
+ (void)showSuccess:(NSString * _Nullable)success toView:(UIView *)view;
    
/**
 成功toast提示，带成功提示图片，自动隐藏，默认2秒后隐藏
 
 @param label 成功信息title
 @param detailsLabel 成功信息
 @param view 添加到的view
 */
+ (void)showSuccessWithLabel:(NSString * _Nullable)label detailsLabel:(NSString * _Nullable)detailsLabel toView:(UIView * _Nullable)view;


/**
 失败toast提示，带失败提示图片，自动隐藏，默认2秒后隐藏

 @param error 失败信息
 @param view 添加到的view
 */
+ (void)showError:(NSString * _Nullable)error toView:(UIView * _Nullable)view;

/**
 失败toast提示，带失败提示图片，自动隐藏，默认2秒后隐藏

 @param label 失败信息title
 @param detailsLabel 失败信息
 @param view 添加到的view
 */
+ (void)showErrorWithLabel:(NSString * _Nullable)label detailsLabel:(NSString * _Nullable)detailsLabel toView:(UIView * _Nullable)view;


/**
 成功toast提示，带成功提示图片，自动隐藏，默认2秒后隐藏

 @param success 成功信息
 */
+ (void)showSuccess:(NSString * _Nullable)success;

/**
 失败toast提示，带失败提示图片，自动隐藏，默认2秒后隐藏

 @param error 失败信息
 */
+ (void)showError:(NSString * _Nullable)error;


/**
 带菊花的消息提示，不好自动隐藏

 @param message 提示信息
 @param view 添加到的view
 @return MBProgressHUD实例
 */
+ (MBProgressHUD *)showMessage:(NSString * _Nullable)message toView:(UIView * _Nullable)view;

/**
 带菊花的消息提示，不好自动隐藏
 
 @param message 提示信息
 @return MBProgressHUD示例
 */
+ (MBProgressHUD *)showMessage:(NSString * _Nullable)message;

/**
 隐藏显示中的MBProgressHUD提示

 @param view MBProgressHUD所加到了view
 */
+ (void)hideHUDForView:(UIView * _Nullable)view;

/**
 隐藏没有明确指出添加到指定view的MBProgressHUD
 */
+ (void)hideHUD;

/**
 带菊花提示提示，不好自动隐藏
 
 @return MBProgressHUD示例
 */
+ (MBProgressHUD *)showLoading;

/**
 带菊花提示提示，不好自动隐藏
 
 @param view 添加到的view
 @return MBProgressHUD实例
 */
+ (MBProgressHUD *)showLoadingWithToView:(UIView * _Nullable)view;

@end

NS_ASSUME_NONNULL_END
