//
//  CornerImageView.h
//  UIImageViewCorner
//
//  Created by 李晓飞 on 2018/3/15.
//  Copyright © 2018年 xiaofei. All rights reserved.
//  继承做法

#import <UIKit/UIKit.h>

@interface CornerImageView : UIImageView

- (void)setImage:(UIImage *)image cornerRadius:(CGFloat)cornerRadius;

@end
