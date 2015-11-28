//
//  WYUIview.m
//  category
//
//  Created by 王勇 on 15/11/28.
//  Copyright © 2015年 wangyong. All rights reserved.
//

#import "WYUIview.h"
#import <QuartzCore/QuartzCore.h>

@implementation WYUIview

-(void)layoutSubviews{
    
    [super layoutSubviews];
    [self setLineView];
    
}

-(void)setLineView{
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    
    if (self.bottomBoard) {
        if (!self.bottomLineView) {
            self.bottomLineView         = [UIView new];
            [self addSubview:self.bottomLineView];
        }
        self.bottomLineView.frame = CGRectMake(self.bottomPadding, height-self.bottomBoard, width-self.bottomPadding*2, self.bottomBoard);
        
        if (self.bottomColor) {
            self.bottomLineView.backgroundColor = self.bottomColor;
        }else{
            self.bottomLineView.backgroundColor=[UIColor whiteColor];
        }
    }
    
    if (self.topBoard) {
        if (!self.topLineView) {
            self.topLineView         = [UIView new];
            [self addSubview:self.topLineView];
        }
        self.topLineView.frame = CGRectMake(self.topPadding, 0, width-self.topPadding*2, self.topBoard);
        
        if (self.topColor) {
            self.topLineView.backgroundColor = self.topColor;
        }else{
            self.topLineView.backgroundColor=[UIColor whiteColor];
        }
    }
    
    if (self.leftBoard) {
        if (!self.leftLineView) {
            self.leftLineView         = [UIView new];
            [self addSubview:self.leftLineView];
        }
        self.leftLineView.frame = CGRectMake(0, self.leftPadding, self.leftBoard, height-self.leftPadding*2);
        
        if (self.leftColor) {
            self.leftLineView.backgroundColor = self.leftColor;
        }else{
            self.leftLineView.backgroundColor=[UIColor whiteColor];
        }
    }
    
    if (self.rightBoard) {
        if (!self.rightLineView) {
            self.rightLineView         = [UIView new];
            [self addSubview:self.rightLineView];
        }
        self.rightLineView.frame = CGRectMake(width-self.rightBoard, self.rightPadding, self.rightBoard, height-self.rightPadding*2);
        
        if (self.rightColor) {
            self.rightLineView.backgroundColor = self.rightColor;
        }else{
            self.rightLineView.backgroundColor=[UIColor whiteColor];
        }
    }

}

@end
