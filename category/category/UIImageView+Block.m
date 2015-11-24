//
//  UIImageView+Block.m
//  category
//
//  Created by 王勇 on 15/11/24.
//  Copyright © 2015年 wangyong. All rights reserved.
//

#import "UIImageView+Block.h"
#import <objc/runtime.h>

static char addActionBolck_key;

@implementation UIImageView (Block)

-(void)addActionBolck:(void (^)(UIImageView *imageView))block{
    if (block) {
        objc_setAssociatedObject(self, &addActionBolck_key, block, OBJC_ASSOCIATION_COPY);
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageAction)];
        [self addGestureRecognizer:singleTap1];
    }
}
    
-(void)imageAction{
    void(^block)(UIImageView *) = objc_getAssociatedObject(self, &addActionBolck_key);
    if (block) {
        __weak __typeof(self)weakSelf = self;
        block(weakSelf);
    }
}

@end
