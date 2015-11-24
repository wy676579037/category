//
//  UIButton+Block.h
//  category
//
//  Created by 王勇 on 15/11/24.
//  Copyright © 2015年 wangyong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Block)

-(void)addTouchUpInsideActionBlock:(void(^)(UIButton *btn))block;

-(void)addTouchDownActionBlock:(void(^)(UIButton *btn))block;

@end
