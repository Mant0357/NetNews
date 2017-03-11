//
//  NSArray+Log.m
//  NSURLSessionDirll
//
//  Created by wangchen on 17/3/1.
//  Copyright © 2017年 王晨. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)

- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level {
    
    NSMutableString *str = [NSMutableString string];
    [str appendString:@"(\n"];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (idx == self.count - 1) {
            [str appendFormat:@"\t%@\n",obj];
        }else {
        [str appendFormat:@"\t%@,\n",obj];
        }
    }];
     [str appendString:@")\n"];
    return str;
}

@end



@implementation NSDictionary (Log)

- (NSString *)descriptionWithLocale:(id)locale {
    NSMutableString *str = [NSMutableString string];
    [str appendString:@"{\n"];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [str appendFormat:@"\t%@ = %@;\n",key,obj];
        
    }];
    
    NSRange range = [str rangeOfString:@";" options:NSBackwardsSearch];
    [str deleteCharactersInRange:range];
    [str appendString:@"}\n"];
    
    return str;
}

@end
