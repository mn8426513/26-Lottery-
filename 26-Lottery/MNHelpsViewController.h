//
//  MNHelpsViewController.h
//  26-Lottery
//
//  Created by Mac on 14-10-11.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "UIBaseSettingViewControllerTableViewController.h"
#import "Html.h"
#import "ItemGroup.h"


@interface MNHelpsViewController : UIBaseSettingViewControllerTableViewController
@property(nonatomic,strong) NSArray *htmlArray;
@property(nonatomic,copy) ItemGroup *group;
@end
