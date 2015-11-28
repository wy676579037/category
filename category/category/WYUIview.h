//
//  WYUIview.h
//  category
//
//  Created by 王勇 on 15/11/28.
//  Copyright © 2015年 wangyong. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE @interface WYUIview : UIView

@property (nonatomic,strong) UIView *bottomLineView;

@property (nonatomic,strong) UIView *topLineView;

@property (nonatomic,strong) UIView *leftLineView;

@property (nonatomic,strong) UIView *rightLineView;

@property (assign, nonatomic) IBInspectable CGFloat topBoard;

@property (nonatomic,strong ) IBInspectable UIColor *topColor;

@property (assign, nonatomic) IBInspectable CGFloat topPadding;


@property (assign, nonatomic) IBInspectable CGFloat bottomBoard;

@property (nonatomic,strong ) IBInspectable UIColor *bottomColor;

@property (assign, nonatomic) IBInspectable CGFloat bottomPadding;


@property (assign, nonatomic) IBInspectable CGFloat leftBoard;

@property (nonatomic,strong ) IBInspectable UIColor *leftColor;

@property (assign, nonatomic) IBInspectable CGFloat leftPadding;


@property (assign, nonatomic) IBInspectable CGFloat rightBoard;

@property (nonatomic,strong ) IBInspectable UIColor *rightColor;

@property (assign, nonatomic) IBInspectable CGFloat rightPadding;

@end
