//
//  MNLiveRemindViewController.m
//  26-Lottery
//
//  Created by Mac on 14-10-10.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNLiveRemindViewController.h"
#import "CellSwitchModelItem.h"
#import "CellLabelModelItem.h"
#import "ItemGroup.h"
@interface MNLiveRemindViewController ()

@end

@implementation MNLiveRemindViewController

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
    
    CellModelItem  *item00 = [CellSwitchModelItem  cellSwitchModelItemWithIcon:nil  title:@"提醒我关注的比赛"];
    

    CellLabelModelItem *item10 = [CellLabelModelItem cellLabelModelItemWithIcon:nil title:@"起始时间"];
   
    
    CellLabelModelItem *item11 = [CellLabelModelItem cellLabelModelItemWithIcon:nil title:@"结束时间"];
    
    NSLog(@"%@",item10.title);
    
    ItemGroup *group0 = [ItemGroup itemGroupWithHeader:nil footer:@"当我关注的比赛的比分发生变化时，通过小弹窗或推送进行提醒" cellModelItems:@[item00]];
    
    ItemGroup *group1 = [ItemGroup itemGroupWithHeader:@"只在以下时间接受比分直播" footer:@"当我关注的比赛的比分发生变化时，通过小弹窗或推送进行提醒" cellModelItems:@[item10,item11]];
   
   
    [self.mutableArray addObject:group0];
    
    [self.mutableArray addObject:group1];
}

@end
