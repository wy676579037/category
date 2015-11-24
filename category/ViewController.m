//
//  ViewController.m
//  category
//
//  Created by 王勇 on 15/11/24.
//  Copyright © 2015年 wangyong. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Block.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *touchDownActionBlockBtn;

@property (weak, nonatomic) IBOutlet UIButton *touchUpInsideActionBlock;

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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
