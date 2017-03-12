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
    
    //获取频道数据
    NSArray *kindNewsDataArray = [WSKindNewsModel getKindModelArray];
    
    
      
}

@end
