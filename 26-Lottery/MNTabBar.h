//
//  TabBar.h
//  26-Lottery
//
//  Created by Mac on 14-10-4.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MNTabBar;


@protocol  MNTabBarDelegate <NSObject>
@optional
-(void)tabBar:(MNTabBar*)tabBar  didSelectButtonFrom:(int) from to:(int) to;
@end


@interface MNTabBar : UIView
@property (nonatomic,weak) id <MNTabBarDelegate> delegate;
@property (nonatomic,weak) UIButton *selectedButton;

//-(TabBar*)initWithFrame;
-(void)addTabBarButtonWithNormalName:(NSString*) name selName:(NSString*)selName;

@end
