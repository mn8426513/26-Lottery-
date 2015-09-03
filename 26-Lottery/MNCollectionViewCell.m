//
//  MNCollectionViewCell.m
//  26-Lottery
//
//  Created by Mac on 14-10-10.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNCollectionViewCell.h"

@implementation MNCollectionViewCell



- (instancetype)init{
    
    if(self = [super init]){
     
        
        
        UIImageView *icon = [[UIImageView alloc] init];
        
        icon.frame = CGRectMake(11, 0, 58,58);
        
        [self addSubview:icon];
        
        UILabel *label =  [[UILabel alloc] init];
    
    
        label.frame = CGRectMake(0, 0, self.frame.size.width, 22);
        
        label.center = CGPointMake(self.frame.size.width * 0.5, 11);
        
        [self addSubview: label];
    
    
    } ;
    
return  self;
}



-(void)setModel:(MNProductPush *)model{

    _model = model;
    
    
    [self setData];
}

-(void)layoutSubviews{

     UIImageView *icon = [[UIImageView alloc] init];
    
    icon.frame = CGRectMake(11, 0, 58,58);
    
    [self addSubview:icon];
    
    UILabel *label =  [[UILabel alloc] init];
    
    
    label.frame = CGRectMake(0, 0, self.frame.size.width, 22);
    
    label.center = CGPointMake(self.frame.size.width * 0.5, 11);
    
    [self addSubview: label];

    _icon = icon;
    
    _title =label;
    
}




-(void)setData {
    self.icon.image = [UIImage imageNamed:_model.icon];
    self.title.text = _model.title;
}



@end
