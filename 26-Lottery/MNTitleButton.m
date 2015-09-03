//
//  MNTitleButton.m
//  26-Lottery
//
//  Created by Mac on 14-10-5.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNTitleButton.h"
#import <Availability.h>

@interface  MNTitleButton ()

@property (nonatomic,weak) UIFont  *titleFont;

@end

@implementation MNTitleButton


//   当从xib或者是storyBoard创建完毕你一个view时调用（唤醒时调用）
// -(void)awakeFromNib{
//    self.font = self.titleLabel.font;
//   NSLog(@"----awake");
// }


//-(void)willMoveToSuperview:(UIView *)newSuperview{
//
////    self.font = self.titleLabel.font;
//}







//从文件中解析中创建时就会就调用这个方法
-(id)initWithCoder:(NSCoder *)decoder{
      if ( self = [super initWithCoder:decoder]) {
          [self setup];
   }
    return self;
}

//  用代码创建时就调用这个方法，
-(id)initWithFrame:(CGRect)frame{
    if(self=[super initWithFrame:frame]){
        [self setup];
    }
     return  self;
}



-(void)setup{
    self.titleFont = [UIFont systemFontOfSize:19];
    self.titleLabel.font =  self.titleFont;
    self.imageView.contentMode =  UIViewContentModeCenter;
}

//
//#ifdef __IPHONE_7_0
//
//#else
//
//
//#endif


-(CGRect)titleRectForContentRect:(CGRect)contentRect{
   
    
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    NSDictionary *attrs = @{NSFontAttributeName : self.titleFont };
    
    
    CGFloat titleWidth = 0.0;
    
    //  还要注意Xcode的版本控制，如果是Xcode4.3之前的话是没有 boundingrectwith 这个方法
    
    if([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0){
       
        //xcode5才编译这段代码
#ifdef  __IPHONE_7_0
        
        titleWidth = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT)options:
                    NSStringDrawingUsesLineFragmentOrigin  attributes:attrs context:nil].size.width;
   
#else
        titleWidth = [self.currentTitle sizeWithFont:self.titleFont].width;
        
#endif
    }else{
        titleWidth = [self.currentTitle sizeWithFont:self.titleFont].width;
    
    }
    
    CGFloat titleHeight = contentRect.size.height;
    
    return  CGRectMake(titleX, titleY, titleWidth, titleHeight);
    
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{


   
    CGFloat imageY = 0;
    
    CGFloat imageWidth  = 15;
    
    CGFloat imageX = contentRect.size.width - imageWidth;
    
    CGFloat imageHeight = contentRect.size.height;
    
    return  CGRectMake(imageX, imageY, imageWidth, imageHeight);
    

}


@end
