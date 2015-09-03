//
//  MNAboutViewController.m
//  26-Lottery
//
//  Created by Mac on 14-10-11.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNAboutViewController.h"
#import "ItemGroup.h"
#import <MessageUI/MessageUI.h>

@interface MNAboutViewController ()

@end

@implementation MNAboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    [self setData];
}



-(void)setData{


 
    CellModelItem *item0 = [CellRowModelItem cellRowModelItemWithIcon:nil title:@"评分支持" destVC:nil];
    item0.option = ^{
    
     NSString *appleId = @"1234567";

     NSURL *url =  [NSURL URLWithString:[NSString stringWithFormat:@"itms-apps://itunes.apple.com/cn/app/id%@?mt=8",appleId]];
        
     [[UIApplication sharedApplication]  openURL:url];
    
    };
    
    
    CellModelItem *item1 = [CellRowModelItem cellRowModelItemWithIcon:nil title:@"客服电话" destVC:nil];
    
    item1.detail = @"10086";
    
    
    
    __unsafe_unretained typeof (self) blockVC = self;
    item1.option = ^{
        
    
//   NSURL *url = [NSURL URLWithString:@"tel://10010"];
//   [[UIApplication sharedApplication] openURL:url];
        
       
//   NSURL *url = [NSURL URLWithString:@"telprompt://10010"];
//   [[UIApplication sharedApplication] openURL:url];
        
        if(   blockVC -> _webview == nil){
        
          blockVC -> _webview = [[UIWebView alloc] initWithFrame:CGRectZero];
        }
        
        [ blockVC -> _webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://10086"]]]];
    };
    
    // 将第一组数据添加到数组中去
    
    ItemGroup *group0 = [ItemGroup itemGroupWithHeader:nil footer:nil cellModelItems:@[item0,item1]];
    
    [self.mutableArray addObject:group0];

}













@end
