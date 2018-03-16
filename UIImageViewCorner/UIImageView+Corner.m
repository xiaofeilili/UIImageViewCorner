//
//  UIImageView+Corner.m
//  UIImageViewCorner
//
//  Created by 李晓飞 on 2018/3/16.
//  Copyright © 2018年 xiaofei. All rights reserved.
//

#import "UIImageView+Corner.h"

@implementation UIImageView (Corner)

- (void)setImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 1.0);
    [[UIBezierPath bezierPathWithRoundedRect:self.bounds
                                cornerRadius:cornerRadius] addClip];
    [image drawInRect:self.bounds];
    self.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

@end
