//
//  MNProductPush.h
//  26-Lottery
//
//  Created by Mac on 14-10-9.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MNProductPush : NSObject

@property(nonatomic,copy) NSString *title;

@property(nonatomic,copy) NSString *icon;

//@property(nonatomic,copy) NSString *ID;


-(id)initWithDict:(NSDictionary *)dict;

+(instancetype)mnproductpushWithDict:(NSDictionary*)dict;

@end
