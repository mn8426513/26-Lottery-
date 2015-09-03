//
//  CellModelItem.m
//  26-Lottery
//
//  Created by Mac on 14-10-7.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "CellModelItem.h"

@implementation CellModelItem

- (id)initWithIcon :(NSString*)icon title:(NSString*)title {
    
        if(self =[super init]){
             self.icon = icon;
             self.title = title;
            }
    return  self;
}


+ (instancetype)cellWithIcon :(NSString*)icon title:(NSString*)title {
    
    CellModelItem *item = [[CellModelItem alloc] initWithIcon:icon title:title];
    
    return  item;
}
@end
