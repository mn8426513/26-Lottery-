//
//  MNTabBarController.m
//  26-Lottery
//
//  Created by Mac on 14-10-4.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNTabBarController.h"
#import "MNTabBar.h"
#import "MNTabBarButton.h"


@interface MNTabBarController () <MNTabBarDelegate>

@end

@implementation MNTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // [self.tabBar removeFromSuperview];
    
     MNTabBar *tabBar = [[MNTabBar alloc] init];
    
    tabBar.frame = self.tabBar.bounds;
    
    tabBar.delegate = self;
   
    [self.tabBar addSubview:tabBar];
    
    for(int i=0; i<self.viewControllers.count;i++){
    
        NSString *name = [NSString stringWithFormat:@"TabBar%d.png",i+1];
        NSString *selName = [NSString stringWithFormat:@"TabBar%dSel.png",i+1];
        [tabBar addTabBarButtonWithNormalName:name selName:selName];
       
     }
    
    
      
}

//  normal:    普通状态
//  highLight: go阿亮状态
//  disable:   enabled= NO;
//  selected:  selected = YES;
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(void)tabBar:(MNTabBar *)tabBar didSelectButtonFrom:(int)from to:(int)to{
    
    
    self.selectedIndex = to;
  }

@end
