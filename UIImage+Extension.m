//
//  UIImage+Extension.m
//  26-Lottery
//
//  Created by Mac on 14-10-6.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+(UIImage*)resizableImage:(NSString*)name{
    
  
  UIImage *image = [UIImage imageNamed: name];
    
    CGFloat h = image.size.height * 0.5;
    CGFloat w = image.size.width * 0.5;
    
    UIImage *changedImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(h, w, h, w)];
    return  changedImage;
  
}
@end
