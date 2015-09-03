//
//  MNMainBuyController.m
//  26-Lottery
//
//  Created by Mac on 14-10-5.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNMainBuyController.h"
#import "MNTitleButton.h"

@interface MNMainBuyController ()

@end

@implementation MNMainBuyController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

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


- (IBAction)titleButton:(UIButton *)sender {
    
        [UIView animateWithDuration:0.7 animations:^{
            
            CGAffineTransform tempTransform = sender.imageView.transform;
            sender.imageView.transform = CGAffineTransformRotate(tempTransform, M_PI);
        }];
  
    
    
}
@end
