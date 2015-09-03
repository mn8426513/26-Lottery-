//
//  MNAwardViewController.m
//  26-Lottery
//
//  Created by Mac on 14-10-10.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNAwardViewController.h"
#import "CellSwitchModelItem.h"
#import "ItemGroup.h"

@interface MNAwardViewController ()

@end

@implementation MNAwardViewController

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

    
    CellSwitchModelItem *item0 = [CellSwitchModelItem cellSwitchModelItemWithIcon:nil title:@"双色球"];
    
    
    CellSwitchModelItem *item1 = [CellSwitchModelItem cellSwitchModelItemWithIcon:nil title:@"大乐透"];
    
    ItemGroup *group0 = [ItemGroup itemGroupWithHeader:@"打开设置即可在开奖后立即收到推送消息，获知开奖号码" footer:nil cellModelItems:@[item0,item1]];
    
    
    [self.mutableArray addObject:group0];

}

@end
