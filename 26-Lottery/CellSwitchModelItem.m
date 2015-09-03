//
//  CellSwitchModelItem.m
//  26-Lottery
//
//  Created by Mac on 14-10-7.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "CellSwitchModelItem.h"

@implementation CellSwitchModelItem




+(instancetype)cellSwitchModelItemWithIcon:(NSString *)icon title:(NSString *)title {
    
    CellSwitchModelItem  *item = [[CellSwitchModelItem alloc] initWithIcon:icon title:title];
    return  item;
}


@end
