//
//  WSKindNewsModel.h
//  NerNews
//
//  Created by wangchen on 17/3/11.
//  Copyright © 2017年 王晨. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WSKindNewsModel : NSObject

//频道ID
@property(nonatomic, copy)NSString *tid;

//频道名称
@property(nonatomic, copy)NSString *tname;

//字典转对象构造方法
- (instancetype)kindWithDict:(NSDictionary *)dict;

@end

//(
//	{
//        tname = 原创;
//        color = ;
//        subnum = 6.8万;
//        isHot = 1;
//        tid = T1370583240249;
//        img = http://img2.cache.netease.com/m/newsapp/banner/zhenhua.png;
//        isNew = 0;
//        template = manual;
//        recommendOrder = 0;
//        alias = The Truth;
//        tag = hot;
//        bannerOrder = 105;
//        hasCover = 0;
//        cid = C1348654575297;
//        hasIcon = 1;
//        ename = zhenhua;
//        recommend = 0;
//        headLine = 0;
//        topicid = 00040BGE;
//        special = 0;
//        showType = comment;
//        tagDate = 2015-06-16 10:45:34.0
//    }
//)
