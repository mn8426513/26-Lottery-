//
//  MNLoginViewController.h
//  26-Lottery
//
//  Created by Mac on 14-10-6.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImage+Extension.h"
#import "MNSettingViewController.h"

@interface MNLoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
- (IBAction)setting;

@end
