//
//  ViewController.m
//  UIImageViewCorner
//
//  Created by 李晓飞 on 2018/3/15.
//  Copyright © 2018年 xiaofei. All rights reserved.
//

#import "ViewController.h"
#import "CornerImageView.h"
#import "UIImageView+Corner.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    分类做法
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    imageView.center = CGPointMake(200, 200);
    UIImage *anotherImage = [UIImage imageNamed:@"image"];
    [imageView setImage:anotherImage cornerRadius:5];
    [self.view addSubview:imageView];
    
//    继承做法
    CornerImageView *cImageView = [[CornerImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    cImageView.center = CGPointMake(200, 350);
    UIImage *cAnotherImage = [UIImage imageNamed:@"image"];
    [cImageView setImage:cAnotherImage cornerRadius:5];
    [self.view addSubview:cImageView];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
