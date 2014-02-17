//
//  UICollectionViewCircleLayoutViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 11/18/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "UICollectionViewCircleLayoutViewController.h"
#import "UICollectionViewCircleLayout.h"
#import "UICollectionViewCircleLayoutCell.h"

@interface UICollectionViewCircleLayoutViewController () <UICollectionViewDataSource> {
    NSInteger cellCount_;
}
@property (nonatomic, weak)IBOutlet UICollectionView* collectionView;
@end

@implementation UICollectionViewCircleLayoutViewController


+ (NSString*)sampleName{
    return @"Sample 2. WWDC 2012 session 205";
}

- (NSString*)title {
    return [UICollectionViewCircleLayoutViewController sampleName];
}

+(UIViewController*)newController {
    return [[UICollectionViewCircleLayoutViewController alloc] initWithNibName:@"UICollectionViewCircleLayoutViewController" bundle:[NSBundle mainBundle]];
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
    
    cellCount_ = 20;
    
    UITapGestureRecognizer* tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    [self.collectionView addGestureRecognizer:tapGestureRecognizer];
    
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"UICollectionViewCircleLayoutCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:kUICollectionViewCircleLayoutCellId];
    self.collectionView.collectionViewLayout = [UICollectionViewCircleLayout new];
    [self.collectionView reloadData];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return cellCount_;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell* result = [collectionView dequeueReusableCellWithReuseIdentifier:kUICollectionViewCircleLayoutCellId forIndexPath:indexPath];
    return result;
}


#pragma mark -
- (void)onTap:(UIGestureRecognizer*)recognizer {
    if (recognizer.state == UIGestureRecognizerStateEnded)
    {
        CGPoint initialPinchPoint = [recognizer locationInView:self.collectionView];
        NSIndexPath* tappedCellPath = [self.collectionView indexPathForItemAtPoint:initialPinchPoint];
        if (tappedCellPath!=nil)
        {
            cellCount_ -= 1;
            [self.collectionView performBatchUpdates:^{
                [self.collectionView deleteItemsAtIndexPaths:[NSArray arrayWithObject:tappedCellPath]];
                
            } completion:nil];
        }
        else
        {
            cellCount_ += 1;
            [self.collectionView performBatchUpdates:^{
                [self.collectionView insertItemsAtIndexPaths:[NSArray arrayWithObject:[NSIndexPath indexPathForItem:0 inSection:0]]];
            } completion:nil];
        }
    }
}

@end
