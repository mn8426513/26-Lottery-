//
//  MNHelpsViewController.m
//  26-Lottery
//
//  Created by Mac on 14-10-11.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNHelpsViewController.h"
#import "ItemGroup.h"
#import "CellHelpListModel.h"
#import "MNWebViewController.h"
#import "ItemGroup.h"
#import "MNNavigationController.h"
@interface MNHelpsViewController ()


@end

@implementation MNHelpsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self htmlArray];

    NSMutableArray *array = [NSMutableArray array];
    for(Html *helplist in _htmlArray){
        
        CellRowModelItem *row = [CellHelpListModel cellHelplistModelWithIcon:nil title:helplist.title destVC:nil ID:helplist.ID url:helplist.html];
        
        [array addObject:row];
    }
    
    ItemGroup *group = [[ItemGroup alloc] init];
    
    group.cellModelItems = array;
    
    [self.mutableArray addObject:group];
    
}

-(NSArray *)htmlArray{
    
    if(_htmlArray == nil){
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"help" ofType:@"json"];
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        
        NSMutableArray *tempArray = [NSMutableArray array];
        
        for(NSDictionary *dict in array){
            
            Html *h = [Html htmlWithDict:dict];
            [tempArray addObject:h];
        }
        _htmlArray = tempArray;
    }
    return _htmlArray;

}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  
    
   
    MNWebViewController *web = [[MNWebViewController alloc] init];
   
    MNNavigationController *nav = [[MNNavigationController alloc] initWithRootViewController:web];
    
    web.html =  self.htmlArray[indexPath.row];
    
    [self presentViewController:nav animated:YES completion:nil];
}


@end
