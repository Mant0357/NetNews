//
//  WSHomeController.m
//  NerNews
//
//  Created by wangchen on 17/3/11.
//  Copyright © 2017年 王晨. All rights reserved.
//

#import "WSHomeController.h"
#import "WSKindNewsModel.h"


@interface WSHomeController ()

//种类scrollView
@property (weak, nonatomic) IBOutlet UIScrollView *kindNewsScrollView;

//详情collectionView
@property (weak, nonatomic) IBOutlet UICollectionView *newsDetailsCollectionView;

//collVCLayout
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *flowLayout;


@end

@implementation WSHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //获取本地数据
    [self reloadData];
    
}

//获取种类标题本地数据
- (void)reloadData {
    
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
    NSMutableArray *mArrayData = [NSMutableArray array];
    for(int i = 0;i < responseArray.count; i++){
        WSKindNewsModel *model = [WSKindNewsModel new];
        [model kindWithDict:responseArray[i]];
        [mArrayData addObject:model];
    }

        NSLog(@"%@",mArrayData);
  
}

@end
