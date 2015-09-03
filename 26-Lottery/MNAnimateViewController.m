//
//  MNAnimateViewController.m
//  26-Lottery
//
//  Created by Mac on 14-10-10.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNAnimateViewController.h"
#import "CellSwitchModelItem.h"
#import "ItemGroup.h"


@interface MNAnimateViewController ()

@end

@implementation MNAnimateViewController

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
    
    
    CellSwitchModelItem *item0 = [CellSwitchModelItem cellSwitchModelItemWithIcon:nil title:@"中奖动画"];
    
   
    
    ItemGroup *group0 = [ItemGroup itemGroupWithHeader:@"当你有新中奖订单，启动程序时通过动画提醒您。为避免过于频繁，高频彩不会提醒" footer:nil cellModelItems:@[item0]];
    
    
    [self.mutableArray addObject:group0];
    
}

@end
