//
//  ItemGroup.m
//  26-Lottery
//
//  Created by Mac on 14-10-7.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "ItemGroup.h"

@implementation ItemGroup


-(instancetype)initWithHeader:(NSString*)header footer:(NSString*)footer cellModelItems:(NSArray*)cellModelItems{
    if(self = [super init]){
        self.header = header;
        self.footer = footer;
        self.cellModelItems = cellModelItems;
     }
   return self;
}


+(instancetype)itemGroupWithHeader:(NSString *)header footer:(NSString *)footer cellModelItems:(NSArray *)cellModelItems{
   
    ItemGroup *itemgroup= [[ItemGroup alloc] initWithHeader:header footer:footer cellModelItems:cellModelItems];
    
    return  itemgroup;

}
@end
