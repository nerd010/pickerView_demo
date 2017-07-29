//
//  UIPickerView+malPicker.m
//  PickerView_demo
//
//  Created by Charles Wang on 16/7/18.
//  Copyright © 2016年 CHW. All rights reserved.
//

#import "UIPickerView+malPicker.h"
#import <objc/runtime.h>

@implementation UIPickerView (malPicker)
- (void)clearSpearatorLine
{
    if (!self.mal_lineisHidden)//该方法会被多次调用，加一个标示让它只调用一次
    {
        [self.subviews enumerateObjectsUsingBlock:^(* UIView  _Nonnull obj, NSUInteger idx, BOOL  _Nonnull stop) {
            if (obj.frame.size.height < 1)
            {
                obj.backgroundColor = [UIColor clearColor];
            }
        }];
    }
    self.mal_lineisHidden = YES;
}

- (BOOL)mal_lineisHidden
{
    return [objc_getAssociatedObject(self, _cmd) boolValue];
}

- (void)setMal_lineisHidden:(BOOL)mal_lineisHidden
{
    objc_setAssociatedObject(self, @selector(mal_lineisHidden), @(mal_lineisHidden), OBJC_ASSOCIATION_ASSIGN);
}

//文／liang1991（简书作者）
//原文链接：http://www.jianshu.com/p/c667a4c7a48f
//著作权归作者所有，转载请联系作者获得授权，并标注“简书作者”。
@end
