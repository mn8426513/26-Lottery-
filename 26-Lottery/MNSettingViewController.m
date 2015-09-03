//
//  MNSettingViewController.m
//  26-Lottery
//
//  Created by Mac on 14-10-6.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNSettingViewController.h"
#import "CellModelItem.h"
#import "ItemGroup.h"
#import "MNPushViewController.h"
#import "MBProgressHUD+MJ.h"
#import "MNProductPushCollectionViewController.h"
#import "MNHelpsViewController.h"
#import "MNAboutViewController.h"
#import "MNMessageViewController.h"
#import "MNShareViewController.h"



@interface  MNSettingViewController() 


@end
@implementation MNSettingViewController


-(void)setupGroup0{
     // 第一组数据中的第一行
    CellModelItem  *item00 = [CellRowModelItem cellRowModelItemWithIcon:@"MorePush" title:@"推送和提醒" destVC:[MNPushViewController class]];
    
    // 第一组数据中的第二行
    
    CellModelItem *item01 = [CellSwitchModelItem cellSwitchModelItemWithIcon:@"handShake" title:@"摇一摇机选" ];
    
    // 第一组数据中的第三行
    CellModelItem *item02 = [CellSwitchModelItem cellSwitchModelItemWithIcon:@"sound_Effect" title:@"声音效果" ];
    
    // 将第一组数据添加到数组中去
    ItemGroup *group0 = [ItemGroup itemGroupWithHeader:@"小涵" footer:@"我喜欢你" cellModelItems:@[item00,item01,item02]];
    [self.mutableArray addObject:group0];
}

-(void)setupGroup1{
    
    // 第二组数据中的第一行

    
    CellModelItem  *item10 = [CellRowModelItem cellRowModelItemWithIcon:@"MoreUpdate" title:@"检查新版本" destVC:[MNPushViewController class]];
    item10.option = ^{
       // 1.弹框出来表示正在加载
        [MBProgressHUD showMessage:@"正在检查是否有新版本..."];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            // 移除HUD
            [MBProgressHUD hideHUD];
            
            // 提醒有没有新版本
            [MBProgressHUD showError:@"没有新版本"];
      });
       
    };
    
    // 第二组数据中的第二行
    CellModelItem  *item11 = [CellRowModelItem cellRowModelItemWithIcon:@"MoreHelp" title:@"帮助" destVC:[MNHelpsViewController class]];
    //  第二组数据中的第三行
    CellModelItem  *item12 = [CellRowModelItem cellRowModelItemWithIcon:@"MoreShare" title:@"分享" destVC:[MNShareViewController class]];
    
    //第二组数据中的第四行
    CellModelItem  *item13 = [CellRowModelItem cellRowModelItemWithIcon:@"MoreMessage" title:@"查看消息" destVC:[MNMessageViewController class]];
   
    //第二组数据中的第五行
    CellModelItem  *item14 = [CellRowModelItem cellRowModelItemWithIcon:@"MoreNetease" title:@"产品推荐" destVC:[ MNProductPushCollectionViewController class]];

    //第二组数据中的第六行
    CellModelItem  *item15 = [CellRowModelItem cellRowModelItemWithIcon:@"MoreAbout" title:@"关于" destVC:[MNAboutViewController class]];
    
    
    
    // 将第二组数据添加到数组中去
    ItemGroup *group1 = [ItemGroup itemGroupWithHeader:@"XiaoHan" footer:@"I miss you" cellModelItems:@[item10,item11,item12,item13,item14,item15]];
    [self.mutableArray addObject:group1];

}


-(void)viewDidLoad{

    [super viewDidLoad];
    
    [self setupGroup0];
    
    self.title = @"设置";
    
    [self setupGroup1];
}


-(id)init {
    
    if(self = [super init]){
    
    }
    return self;
}




@end
