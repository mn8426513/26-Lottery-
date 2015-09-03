//
//  CellHelpListModel.h
//  26-Lottery
//
//  Created by Mac on 14-10-11.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "CellHelpListModel.h"
#import "CellRowModelItem.h"

@interface CellHelpListModel : CellRowModelItem

@property(nonatomic,copy) NSString *ID;
@property(nonatomic,copy) NSString *url;

+(instancetype)cellHelplistModelWithIcon:(NSString *)icon title:(NSString *)title destVC:(Class) destVC ID:(NSString *)ID  url :(NSString*)url;



@end
