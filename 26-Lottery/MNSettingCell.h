//
//  MNSettingCell.h
//  26-Lottery
//
//  Created by Mac on 14-10-7.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellModelItem.h"
#import "CellSwitchModelItem.h"
#import "CellRowModelItem.h"
#import "CellLabelModelItem.h"
@interface MNSettingCell : UITableViewCell{

}

@property (nonatomic,strong) CellModelItem *item;

+(instancetype)cellWithTableView:(UITableView *)tableView ;
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;

@end
