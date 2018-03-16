//
//  CornerImageView.m
//  UIImageViewCorner
//
//  Created by 李晓飞 on 2018/3/15.
//  Copyright © 2018年 xiaofei. All rights reserved.
//

#import "CornerImageView.h"

@implementation CornerImageView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)setImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 1.0);
    [[UIBezierPath bezierPathWithRoundedRect:self.bounds
                                cornerRadius:cornerRadius] addClip];
    [image drawInRect:self.bounds];
    self.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

//- (void)setImage:(UIImage *)image {
//    if (self.image != image) {
//        self.image = [self circleImageWithOriginImage:image];
//    }
//}
//
//- (UIImage *)circleImageWithOriginImage:(UIImage *)originImage {
//    // NO 代表透明
//    UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, 0);
//    // 获取上下文
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    // 添加一个圆
//    CGRect rect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
//    CGContextAddEllipseInRect(ctx, rect);
//    // 裁剪
//    CGContextClip(ctx);
//    // 将图片画上去
////    [self drawRect:rect];
//    [originImage drawInRect:rect];
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    // 关闭上下文
//    UIGraphicsEndImageContext();
//    return image;
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
