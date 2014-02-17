//
//  UICollectionViewCustomLayoutViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 11/18/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "UICollectionViewCustomLayoutViewController.h"
#import "UICollectionViewCustomLayoutCell.h"
#import "UICollectionViewCustomLayout.h"

@interface UICollectionViewCustomLayoutViewController () <UICollectionViewDataSource>
@property (nonatomic, weak)IBOutlet UICollectionView* collectionView;
@end

@implementation UICollectionViewCustomLayoutViewController


+ (NSString*)sampleName{
    return @"Sample 1. WWDC 2012 session 205";
}

- (NSString*)title {
    return [UICollectionViewCustomLayoutViewController sampleName];
}

+(UIViewController*)newController {
    return [[UICollectionViewCustomLayoutViewController alloc] initWithNibName:@"UICollectionViewCustomLayoutViewController" bundle:[NSBundle mainBundle]];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.collectionView setCollectionViewLayout:[UICollectionViewCustomLayout new]];
    [self.collectionView registerNib:[UINib nibWithNibName:@"UICollectionViewCustomLayoutCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:kUICollectionViewCustomLayoutCellId];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UICollectionViewDatasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 120;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:kUICollectionViewCustomLayoutCellId forIndexPath:indexPath];
    return cell;
}

@end
