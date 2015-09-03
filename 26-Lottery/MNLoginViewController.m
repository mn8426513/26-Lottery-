//
//  MNLoginViewController.m
//  26-Lottery
//
//  Created by Mac on 14-10-6.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNLoginViewController.h"


@interface MNLoginViewController ()

@end

@implementation MNLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
// Do any additional setup after loading the view.
  
//  UIImage *normal = [UIImage imageNamed: @"RedButton"];
//  UIImage *highLight = [UIImage imageNamed:@"RedButtonPressed"];
//    
//  
//     UIImage *stretch =  [normal resizableImageWithCapInsets:UIEdgeInsetsMake(normal.size.height*0.5, normal.size.width*0.5, normal.size.height* 0.5, normal.size.width*0.5)];
//    
//    UIImage *stretch1= [highLight stretchableImageWithLeftCapWidth:normal.size.width*0.5 topCapHeight:normal.size.height* 0.5];
  
//  用分类实现了按钮的无失真的拉伸
    UIImage *stretch  = [UIImage resizableImage:@"RedButton"];
    UIImage *stretch1 = [UIImage resizableImage:@"RedButtonPressed"];
   
    [self.loginBtn setBackgroundImage:stretch forState:UIControlStateNormal];
    [self.loginBtn setBackgroundImage:stretch1 forState:UIControlStateHighlighted];
    
    

}
- (IBAction)setting {
    
    
    MNSettingViewController *setVc = [[MNSettingViewController alloc] initWithStyle:UITableViewStyleGrouped];

    
    [self.navigationController pushViewController:setVc animated:YES];
    
    
    
    
}
@end
