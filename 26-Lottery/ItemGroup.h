//
//  ItemGroup.h
//  26-Lottery
//
//  Created by Mac on 14-10-7.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemGroup : NSObject
@property(nonatomic,copy) NSString *header;
@property(nonatomic,copy) NSString *footer;
@property(nonatomic,strong) NSArray *cellModelItems;
-(id)initWithHeader:(NSString*)header footer:(NSString*)footer cellModelItems:(NSArray*)cellModelItems;

+(instancetype)itemGroupWithHeader:(NSString*)header footer:(NSString*)footer cellModelItems:(NSArray*)cellModelItems;
@end
