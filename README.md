# KYProgressHUD

[![CI Status](https://img.shields.io/travis/kyleboy/KYProgressHUD.svg?style=flat)](https://travis-ci.org/kyleboy/KYProgressHUD)
[![Version](https://img.shields.io/cocoapods/v/KYProgressHUD.svg?style=flat)](https://cocoapods.org/pods/KYProgressHUD)
[![License](https://img.shields.io/cocoapods/l/KYProgressHUD.svg?style=flat)](https://cocoapods.org/pods/KYProgressHUD)
[![Platform](https://img.shields.io/cocoapods/p/KYProgressHUD.svg?style=flat)](https://cocoapods.org/pods/KYProgressHUD)

对[MBProgressHUD](https://github.com/jdg/MBProgressHUD)的二次封装，提供便捷调用方法

<img src="./image/1.png" width="30%"/><img src="./image/2.png" width="30%"/><img src="./image/3.png" width="30%"/><img src="./image/4.png" width="30%"/><img src="./image/5.png" width="30%"/><img src="./image/6.png" width="30%"/>

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```objc
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
```

## Requirements

## Installation

KYProgressHUD is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KYProgressHUD'
```

## Author

kyleboy, kyleboy@126.com

## License

KYProgressHUD is available under the MIT license. See the LICENSE file for more info.
