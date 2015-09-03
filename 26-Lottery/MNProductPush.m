//
//  MNProductPush.m
//  26-Lottery
//
//  Created by Mac on 14-10-9.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNProductPush.h"

@implementation MNProductPush
- (id)initWithDict:(NSDictionary *)dict{
    
    if(self = [super init]){
        
        self.title = dict[@"title"];
        self.icon = dict[@"icon"];
    
      
    
    
    
    }
    return  self;
    
}

+(instancetype)mnproductpushWithDict:(NSDictionary *)dict{

    MNProductPush *p = [[MNProductPush alloc] initWithDict:dict];

    return  p;
}


@end
