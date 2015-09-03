//
//  MNSettingCell.m
//  26-Lottery
//
//  Created by Mac on 14-10-7.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNSettingCell.h"

@interface MNSettingCell()

@property (nonatomic,strong) UIImageView *rowView;
@property (nonatomic,strong) UISwitch *switchView;

@end

@implementation MNSettingCell


-(UIImageView *)rowView{
   
    if(_rowView== nil){
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
        _rowView = imageView;
    
        }
    return  _rowView;
}
-(UISwitch*)switchView{

    if (_switchView==nil) {
        _switchView = [[UISwitch alloc] init];
    }

    return  _switchView;
}
+(instancetype)cellWithTableView:(UITableView *)tableView {
   
    static NSString *ID = @"setting";
    MNSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if(cell == nil){
        cell = [[MNSettingCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    
    }
    return  cell;
}



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
       self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
        if(self){
           
           }
    return self;

}



- (void)setItem:(CellModelItem *)item{
    
    _item = item ;
    
    [self setupData];
    
    [self setupRightAccessory];


}
-(void)setupData{
    self.imageView.image =  [UIImage imageNamed:[_item icon]];
    self.textLabel.text  =  [_item title];
    self.detailTextLabel.text = _item.detail;
}



-(void)setupRightAccessory{
    
    if([_item isKindOfClass:[CellSwitchModelItem class]]){
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        self.accessoryView = self.switchView;
        
    }else if ([_item isKindOfClass: [CellRowModelItem class]]){
        
        self.accessoryView = self.rowView;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
        
    }else if([_item isKindOfClass:[CellLabelModelItem class]]){
        
        UIView *view = [[UIView alloc] init];
        view.bounds = CGRectMake(0, 0, 40, 40);
        view.backgroundColor = [UIColor greenColor];
        self.accessoryView = view;
    
    
    
    }else{
        
      self.accessoryView = nil;
   }
    


    
}





@end
