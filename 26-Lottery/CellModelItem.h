//
//  CellModelItem.h
//  26-Lottery
//
//  Created by Mac on 14-10-7.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef   void (^MNSettingCellBlock)();

@interface CellModelItem : NSObject

@property (nonatomic,copy) NSString *icon;      
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) MNSettingCellBlock option;
@property (nonatomic,copy) NSString *detail;

-(id)initWithIcon :(NSString*)icon title:(NSString*)title ;


+(instancetype)cellWithIcon :(NSString*)icon title:(NSString*)title;

@end
