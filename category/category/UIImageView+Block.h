//
//  UIImageView+Block.h
//  category
//
//  Created by 王勇 on 15/11/24.
//  Copyright © 2015年 wangyong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Block)

-(void)addActionBolck:(void(^)(UIImageView *imageView))block;

@end
