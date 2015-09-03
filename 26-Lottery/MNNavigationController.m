//
//  MNNavigationController.m
//  26-Lottery
//
//  Created by Mac on 14-10-5.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNNavigationController.h"

@interface MNNavigationController ()

@end

@implementation MNNavigationController


// 这样的话这个方法会被调用三次 ，没必要在这个方法中这样写
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
}




//这个方法在在第一次调用这个类的时候调用一次
+(void)initialize{
    
    
  //  1. 设置导航栏呈现
    UINavigationBar *bar =  [UINavigationBar appearance];
   
    //设置 navigationBar 背景的图片
    
    UIDevice *device = [UIDevice currentDevice];
    NSString *systemVersion = nil;
    if([device.systemVersion doubleValue] >=7.0){
        systemVersion = @"NavBar64.png";//设置不同版本下的导航栏的背景图片
        
//        bar.tintColor = [UIColor greenColor];
        
    
    }else{
        systemVersion = @"NavBar.png";
    }
        [bar setBackgroundImage:[UIImage imageNamed:systemVersion] forBarMetrics:UIBarMetricsDefault];
    
    //设置 navigationBar的标题文字的属性
    
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    attributes[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attributes[NSFontAttributeName]= [UIFont systemFontOfSize:19];
    [bar setTitleTextAttributes:attributes];

 // 2.  设置barButtonItem的呈现
    
    UIBarButtonItem *buttonItem = [UIBarButtonItem appearance];
    
    
    //设置标题文字的颜色和文字的大小
    
    NSDictionary *itemAttributes = [NSDictionary dictionary];
    
    itemAttributes = @{
                       NSFontAttributeName : [UIFont systemFontOfSize:17],
                       NSForegroundColorAttributeName :[UIColor whiteColor]
                       };
    
    [buttonItem setTitleTextAttributes:itemAttributes forState:UIControlStateNormal];
     //设置item的背景图片（iOS6才需要设置，因为iOS7实现了扁平化，没有背景图片之说）
  
    if([[UIDevice currentDevice].systemVersion doubleValue]<= 7.0){
        [buttonItem setBackgroundImage:[UIImage imageNamed: @"NavButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [buttonItem setBackgroundImage:[UIImage imageNamed:@"NavButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
        
        [buttonItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        
        
        [buttonItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    }else{
     
//        buttonItem.tintColor = [UIColor redColor];
     
    
    }



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

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    viewController.hidesBottomBarWhenPushed = YES;
    
    [super pushViewController:viewController animated:YES];


}

@end
