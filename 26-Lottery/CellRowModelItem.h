//
//  CellRowModelItem.h
//  26-Lottery
//
//  Created by Mac on 14-10-7.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "CellModelItem.h"

@interface CellRowModelItem : CellModelItem
@property(nonatomic,assign) Class destVC;

-(id)initWithIcon:(NSString *)icon title:(NSString *)title destVC:(Class) destVC;
+(instancetype)cellRowModelItemWithIcon:(NSString *)icon title:(NSString *)title destVC:(Class) destVC;
@end
