//
//  UILabel+WHAdditions.m
//  Nine-task01
//
//  Created by wangchen on 17/1/4.
//  Copyright © 2017年 王晨. All rights reserved.
//

#import "UILabel+WHAdditions.h"

@implementation UILabel (WHAdditions)

+ (instancetype)mac_LabelWithTextColor:(UIColor *)textColor andFontSize:(NSInteger)fontSize andText:(NSString *)text {
    UILabel *lable = [[UILabel alloc] init];
    lable.text = text;
    lable.textColor = textColor;
    lable.font = [UIFont systemFontOfSize:fontSize];
    
    return lable;
    
}

@end
