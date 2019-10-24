//
//  KYViewController.m
//  KYProgressHUB
//
//  Created by kyleboy on 10/23/2019.
//  Copyright (c) 2019 kyleboy. All rights reserved.
//

#import "KYViewController.h"
#import "KYProgressHUD.h"

@interface KYViewController ()

@end

@implementation KYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickAction:(UIView *)sender {
    switch (sender.tag) {
        case 1:
            [MBProgressHUD showWithDetails:@"提示1测试"];
            break;
        case 2:
            [MBProgressHUD showWithDetails:@"提示2测试" afterDelay:1];
            break;
        case 3:
            [MBProgressHUD showMessage:@"" toView:nil];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [MBProgressHUD hideHUD];
            });
            break;
        case 4:
            [MBProgressHUD showMessage:@"加载中" toView:nil];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [MBProgressHUD hideHUD];
            });
            break;
        case 5:
            [MBProgressHUD showSuccess:@"成功"];
            break;
        case 6:
            [MBProgressHUD showError:@"失败"];
            break;
        
        default:
        break;
    }
}
@end
