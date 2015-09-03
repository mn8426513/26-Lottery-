//
//  MNWebViewController.m
//  26-Lottery
//
//  Created by Mac on 14-10-11.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNWebViewController.h"

@interface MNWebViewController ()<UIWebViewDelegate>

@end

@implementation MNWebViewController


-(void)loadView{
     
   
    
    self.view =   [[UIWebView alloc] init];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    UIWebView *webView = (UIWebView*)self.view;
    
    webView.delegate =self;
    NSURL *url = [[NSBundle mainBundle] URLForResource:self.html.html withExtension:nil];
    
     NSLog(@"%@",self.html.html);
    
    NSURLRequest *resquest = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:resquest];
    
    self.navigationItem.title = self.html.title;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleBordered target:self action:@selector(back)];
    
}

-(void)back{

    [self  dismissViewControllerAnimated:YES completion:nil];

}


@end
