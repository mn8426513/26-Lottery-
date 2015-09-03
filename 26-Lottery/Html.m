//
//  html.m
//  26-Lottery
//
//  Created by Mac on 14-10-10.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "Html.h"

@implementation Html


+ (instancetype)htmlWithDict:(NSDictionary *)dict{
   
    
    Html *h = [[Html alloc] init];
    h.title = dict[@"title"];
    h.ID =dict[@"ID"];
    h.html = dict[@"html"];
    
    NSLog(@"%@",h.html);
    return  h;
   
}

@end
