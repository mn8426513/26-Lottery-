//
//  html.h
//  26-Lottery
//
//  Created by Mac on 14-10-10.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Html : NSObject
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *ID;
@property(nonatomic,copy) NSString *html;

+(instancetype)htmlWithDict:(NSDictionary *)dict;
@end
