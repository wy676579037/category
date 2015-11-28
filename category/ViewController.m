//
//  ViewController.m
//  category
//
//  Created by 王勇 on 15/11/24.
//  Copyright © 2015年 wangyong. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Block.h"
#import "UIImageView+Block.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *touchDownActionBlockBtn;

@property (weak, nonatomic) IBOutlet UIButton *touchUpInsideActionBlock;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self.touchDownActionBlockBtn addTouchDownActionBlock:^(UIButton *btn) {
        NSLog(@"addTouchDownActionBlock");
    }];
    
    [self.touchUpInsideActionBlock addTouchUpInsideActionBlock:^(UIButton *btn) {
        NSLog(@"addTouchUpInsideActionBlock");
    }];
    
    [self.imageView addActionBolck:^(UIImageView *imageView) {
        NSLog(@"UIImageView Block");
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
