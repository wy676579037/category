//
//  UIButton+Block.m
//  category
//
//  Created by 王勇 on 15/11/24.
//  Copyright © 2015年 wangyong. All rights reserved.
//

#import "UIButton+Block.h"
#import <objc/runtime.h>

static char TouchUpInsideActionBlock_key;

static char TouchDownActionBlock_key;


@implementation UIButton (Block)


-(void)addTouchDownActionBlock:(void (^)(UIButton *))block{
    if (block) {
        objc_setAssociatedObject(self, &TouchDownActionBlock_key, block, OBJC_ASSOCIATION_COPY);
        [self addTarget:self action:@selector(touchDownAction:) forControlEvents:UIControlEventTouchDown];
    }
}

-(void)touchDownAction:(UIButton *)btn{
    void (^block)(UIButton *)  = objc_getAssociatedObject(self, &TouchDownActionBlock_key);
    if (block) {
        __weak __typeof(self)weakSelf = self;
        block(weakSelf);;
    }
}



-(void)addTouchUpInsideActionBlock:(void (^)(UIButton *))block{
    if (block) {
        objc_setAssociatedObject(self,&TouchUpInsideActionBlock_key , block, OBJC_ASSOCIATION_COPY);
        [self addTarget:self action:@selector(touchUpInsideAction:) forControlEvents:UIControlEventTouchUpInside];
    }
}



-(void)touchUpInsideAction:(UIButton *)btn{
    void (^block)(UIButton *)  = objc_getAssociatedObject(self, &TouchUpInsideActionBlock_key);
    if (block) {
        __weak __typeof(self)weakSelf = self;
        block(weakSelf);;
    }
}





@end
