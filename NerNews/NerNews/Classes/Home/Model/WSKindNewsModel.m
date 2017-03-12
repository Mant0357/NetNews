//
//  WSKindNewsModel.m
//  NerNews
//
//  Created by wangchen on 17/3/11.
//  Copyright © 2017年 王晨. All rights reserved.
//

#import "WSKindNewsModel.h"
#import <YYModel.h>

@implementation WSKindNewsModel

//字典转对象构造方法
- (instancetype)kindWithDict:(NSDictionary *)dict {
    
    [self setValuesForKeysWithDictionary:dict];
     return self;
}

//只取两Key空实现
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}

+ (NSArray *)getKindModelArray {
    
    //获取本地JSON
    NSString *JSONPath = [[NSBundle mainBundle] pathForResource:@"topic_news.json" ofType:nil];
    //获取本地二进制数据
    NSData *kindData = [NSData dataWithContentsOfFile:JSONPath];
    //NSJSON反序列化数据
    NSDictionary *responseData = [NSJSONSerialization JSONObjectWithData:kindData options:0 error:NULL];
    //导入数组字典输出分类 查看类型
    //    NSLog(@"%@",[responseData class]);
    NSArray *responseArray = [responseData objectForKey:@"tList"];
    //可变数组保存对象
    NSArray *dataArray = [NSArray yy_modelArrayWithClass:[WSKindNewsModel class] json:responseArray];
//    for (WSKindNewsModel *model in dataArray) {
//        
//        NSLog(@"%@",model);
//        
//    }
    return dataArray;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"_tname=%@",_tname];
}
@end
