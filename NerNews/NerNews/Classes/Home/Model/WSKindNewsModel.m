//
//  WSKindNewsModel.m
//  NerNews
//
//  Created by wangchen on 17/3/11.
//  Copyright © 2017年 王晨. All rights reserved.
//

#import "WSKindNewsModel.h"

@implementation WSKindNewsModel

//字典转对象构造方法
- (instancetype)kindWithDict:(NSDictionary *)dict {
    
    [self setValuesForKeysWithDictionary:dict];
     return self;
}

//只取两Key空实现
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}

- (NSString *)description {
    return [NSString stringWithFormat:@"_tname=%@",_tname];
}
@end
