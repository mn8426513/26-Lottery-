//
//  CellRowModelItem.m
//  26-Lottery
//
//  Created by Mac on 14-10-7.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "CellRowModelItem.h"

@implementation CellRowModelItem

- (id)initWithIcon:(NSString *)icon title:(NSString *)title destVC:(Class)destVC{
  
     if(self = [super initWithIcon:icon title:title]) {
        
         self.destVC = destVC;
    
     }
    return  self;
}



+ (instancetype)cellRowModelItemWithIcon:(NSString *)icon title:(NSString *)title destVC:(Class)destVC{
   
    CellRowModelItem *item = [[CellRowModelItem alloc] initWithIcon:icon title:title destVC:destVC];
    
    return  item;
}

@end
