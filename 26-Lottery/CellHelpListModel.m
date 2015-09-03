//
//  CellHelpListModel.m
//  26-Lottery
//
//  Created by Mac on 14-10-11.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "CellHelpListModel.h"

@implementation CellHelpListModel



+(instancetype)cellHelplistModelWithIcon:(NSString *)icon title:(NSString *)title destVC:(Class) destVC ID:(NSString *)ID  url :(NSString*)url{
    CellHelpListModel *helpList = [[CellHelpListModel alloc] initWithIcon:icon title:title destVC:(Class) destVC];
    
    
      helpList.ID =  ID;
      helpList.url = url;
 
      return helpList;
}


@end
