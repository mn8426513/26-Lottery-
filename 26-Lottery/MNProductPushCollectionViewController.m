//
//  MNProductPushCollectionViewController.m
//  26-Lottery
//
//  Created by Mac on 14-10-8.
//  Copyright (c) 2014年 MN. All rights reserved.
//
#define  kReuseIdentifier  @"Cell"
#import "MNProductPushCollectionViewController.h"
#import "MNProductPush.h"
#import "MNCollectionViewCell.h"
@interface MNProductPushCollectionViewController ()

@property(nonatomic,strong) NSArray *collectionViewArray;

@end


@implementation MNProductPushCollectionViewController



-(NSArray *)collectionViewArray{
    
    
    
    if(_collectionViewArray == nil){
        
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"products" ofType:@"json"];
        
        NSData *data = [NSData dataWithContentsOfFile:path];
        
        NSArray *dictArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        
        NSMutableArray  *array = [NSMutableArray array];
     
       
        
     for(NSDictionary *dict  in dictArray){
         
           MNProductPush *product = [MNProductPush mnproductpushWithDict:dict];
           
           [array addObject:product];
        }
                                  
        _collectionViewArray = array;
    }
    return  _collectionViewArray;

}



-(instancetype)init{

    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    if (self = [super initWithCollectionViewLayout:layout]) {
        
    }
    return  self;

}




- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self collectionViewArray];
   
    NSLog(@"%i",_collectionViewArray.count);
  

    
    [self.collectionView registerClass:[MNCollectionViewCell class] forCellWithReuseIdentifier:kReuseIdentifier];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _collectionViewArray.count;
}

- (MNCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  
    MNCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kReuseIdentifier forIndexPath:indexPath];
    
    
    cell.backgroundColor = [UIColor  whiteColor];
    
    CGRect tempFrame =  cell.frame;
    
    
    tempFrame.size = CGSizeMake(100, 100);
    
    
    cell.frame = tempFrame;
    
    
    cell.model = _collectionViewArray[indexPath.item];

    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
