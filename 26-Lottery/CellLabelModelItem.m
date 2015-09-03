//
//  CellLabelModelItem.m
//  26-Lottery
//
//  Created by Mac on 14-10-10.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "CellLabelModelItem.h"

@implementation CellLabelModelItem


+(instancetype)cellLabelModelItemWithIcon:(NSString *)icon title:(NSString *)title{

    CellLabelModelItem *item = [[CellLabelModelItem alloc] initWithIcon:icon
                                                                title:title];

    return  item;
}


@end
