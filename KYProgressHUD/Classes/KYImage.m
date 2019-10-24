//
//  KYImage.m
//  KYProgressHUD
//
//  Created by kyleboy on 2019/10/24.
//

#import "KYImage.h"

@implementation KYImage

+ (UIImage *)imageNamed:(NSString *)name {
    NSString *imagePath = [NSString stringWithFormat:@"KYProgressHUD.bundle/%@", name];
    return [self imageForResourcePath:imagePath ofType:@"png" inBundle:[NSBundle bundleForClass:[self class]]];
}

+ (UIImage *)imageForResourcePath:(NSString *)path ofType:(NSString *)type inBundle:(NSBundle *)bundle {
    NSString *newPath = [NSString stringWithFormat:@"%@@%.0fx", path, [UIScreen mainScreen].scale];
    NSString *filePath = [bundle pathForResource:newPath ofType:type];
    int i = 3;
    while (!filePath && i) {
        if (i == 1) {
            filePath = [bundle pathForResource:path ofType:type];
        } else {
            newPath = [NSString stringWithFormat:@"%@@%dx", path, i];
            filePath = [bundle pathForResource:newPath ofType:type];
        }
        i--;
    }
    return [UIImage imageWithContentsOfFile:filePath];
}
@end
