//
//  NSArray+CZAddition.m
//  Zhifubao
//
//  Created by 刘凡 on 16/4/26.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "NSArray+CZAddition.h"
#import "NSObject+CZAddition.h"

@implementation NSArray (CZAddition)

+ (NSArray *)cz_objectListWithPlistName:(NSString *)plistName clsName:(NSString *)clsName {
    NSURL *url = [[NSBundle mainBundle] URLForResource:plistName withExtension:nil];
    NSArray *list = [NSArray arrayWithContentsOfURL:url];
    
    NSMutableArray *arrayM = [NSMutableArray array];
    
    Class Clz = NSClassFromString(clsName);
    NSAssert(Clz, @"加载 plist 文件时指定的 clsName - %@ 错误", clsName);
    
    for (NSDictionary *dict in list) {
        [arrayM addObject:[Clz cz_objectWithDict:dict]];
    }
    
    return arrayM.copy;
}

@end
