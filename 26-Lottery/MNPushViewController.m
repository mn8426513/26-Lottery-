//
//  MNPushViewController.m
//  26-Lottery
//
//  Created by Mac on 14-10-10.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNPushViewController.h"
#import  "ItemGroup.h"
#import  "MNAwardViewController.h"
#import "MNAnimateViewController.h"
#import "MNLiveRemindViewController.h"
#import "MNPlanTimeViewController.h"


@interface MNPushViewController ()

@end

@implementation MNPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
   
}




-(void)setData{
    
    CellModelItem  *item00 = [CellRowModelItem cellRowModelItemWithIcon:nil title:@"开奖号码推送" destVC:[MNAwardViewController class]];
    
    // 第一组数据中的第二行
    
    CellModelItem *item01 = [CellRowModelItem cellRowModelItemWithIcon:nil title:@"中奖动画" destVC:[MNAnimateViewController class]];
    
    // 第一组数据中的第三行
    CellModelItem *item02 = [CellRowModelItem cellRowModelItemWithIcon:nil title:@"比赛直播提醒" destVC:[MNLiveRemindViewController class]];
    
    CellModelItem *item03 = [CellRowModelItem cellRowModelItemWithIcon:nil title:@"购彩定时提醒" destVC:[MNPlanTimeViewController class]];
    
    // 将第一组数据添加到数组中去
    ItemGroup *group0 = [ItemGroup itemGroupWithHeader:nil footer:nil cellModelItems:@[item00,item01,item02,item03]];
    
    [self.mutableArray addObject:group0];
    
}

- (id)init{
    
    if (self = [super init]){
        
    }
    return  self;
    
}

@end
