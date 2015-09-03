//
//  TabBar.m
//  26-Lottery
//
//  Created by Mac on 14-10-4.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNTabBar.h"
#import "MNTabBarButton.h"


@interface MNTabBar ()
@end

@implementation MNTabBar : UIView
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


//将添加按钮写在一个方法里面



-(void)addTabBarButtonWithNormalName:(NSString *)name selName:(NSString *)selName{

     
         MNTabBarButton *button = [MNTabBarButton buttonWithType:UIButtonTypeCustom];
    
        [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    
        [button setBackgroundImage:[UIImage imageNamed: selName] forState:UIControlStateSelected];
        
        [self addSubview:button];
        
        [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
    
        if(1 == self.subviews.count ){
           
           [self btnClick:button];
    
       }
    
}





// 设置子控件的fRAME

-(void)layoutSubviews{

    [super layoutSubviews];
    
    long count = self.subviews.count;
    
    
    for (int i = 0; i < count; i++){
        
        MNTabBarButton *button = self.subviews[i];
        CGFloat buttonW = self.frame.size.width / count;
        CGFloat buttonH = self.frame.size.height;
        CGFloat buttonY = 0;
        CGFloat buttonX = i * buttonW;
        button.frame =  CGRectMake(buttonX ,buttonY, buttonW, buttonH);
        
        button.tag = i;
      }
   

    
}

-(void)btnClick:(UIButton *)btn{
    
    
       //   4.切换控制器
       //  通知代理
       if([self.delegate respondsToSelector:@selector(tabBar:didSelectButtonFrom:to:) ]){
       
           [self.delegate tabBar:self didSelectButtonFrom:(int)self.selectedButton.tag to: (int)btn.tag];
       
       }
    
    
        //   1.当前选中的button取消选中
        self.selectedButton.selected = NO;
    
        //   2.让心点击的button选中
        btn.selected = YES;
        
        //   3. 心点击的按钮变成当前选中的按钮；
        self.selectedButton = btn;
        
        
    
   
    
    
    
}
@end
