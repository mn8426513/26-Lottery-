//
//  MNCollectionViewCell.h
//  26-Lottery
//
//  Created by Mac on 14-10-10.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MNProductPush.h"

@interface MNCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic)  UIImageView *icon;
@property (weak, nonatomic)  UILabel *title;
@property (nonatomic,strong)  MNProductPush *model;
@end
