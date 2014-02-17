//
//  UICollectionViewCircleLayout.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 11/18/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "UICollectionViewCircleLayout.h"
#define itemWidth 20.0f
#define itemHeight 20.0f

@interface UICollectionViewCircleLayout(){
    NSInteger cellsCount_;
    CGPoint circleCenter_;
    CGFloat circleRadius_;
}
@property (nonatomic, strong) NSMutableArray *deleteIndexPaths;
@property (nonatomic, strong) NSMutableArray *insertIndexPaths;
@end

@implementation UICollectionViewCircleLayout
- (id)init{
    self = [super init];
    if (self){
    }
    return self;
}

- (void)prepareLayout {
    [super prepareLayout];
    
    
    CGSize collectionViewFrameSize = self.collectionView.frame.size;

    cellsCount_ = [self.collectionView numberOfItemsInSection:0];
    circleCenter_ = CGPointMake(collectionViewFrameSize.width / 2, collectionViewFrameSize.height / 2);
    circleRadius_ = MIN(collectionViewFrameSize.width, collectionViewFrameSize.height) / 2.5f;
    
}

- (void)prepareForCollectionViewUpdates:(NSArray *)updateItems {
    [super prepareForCollectionViewUpdates:updateItems];
    
    self.deleteIndexPaths = [NSMutableArray array];
    self.insertIndexPaths = [NSMutableArray array];
    
    
    for (UICollectionViewUpdateItem *update in updateItems)
    {
        if (update.updateAction == UICollectionUpdateActionDelete)
        {
            [self.deleteIndexPaths addObject:update.indexPathBeforeUpdate];
        }
        else if (update.updateAction == UICollectionUpdateActionInsert)
        {
            [self.insertIndexPaths addObject:update.indexPathAfterUpdate];
        }
    }
}

- (void)finalizeCollectionViewUpdates
{
    [super finalizeCollectionViewUpdates];
    // release the insert and delete index paths
    self.deleteIndexPaths = nil;
    self.insertIndexPaths = nil;
}

- (CGSize)collectionViewContentSize {
    return [self collectionView].frame.size;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)path {
    UICollectionViewLayoutAttributes* attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:path];
    attributes.size = CGSizeMake(itemWidth, itemHeight);
    attributes.center = CGPointMake(circleCenter_.x + circleRadius_ * cosf(2 * path.item * M_PI / cellsCount_),
                                    circleCenter_.y + circleRadius_ * sinf(2 * path.item * M_PI / cellsCount_));
    return attributes;
}



- (UICollectionViewLayoutAttributes*)initialLayoutAttributesForAppearingItemAtIndexPath:(NSIndexPath *)itemIndexPath {
    
    UICollectionViewLayoutAttributes* result = [super initialLayoutAttributesForAppearingItemAtIndexPath:itemIndexPath];
    if (!result){
        result = [self layoutAttributesForItemAtIndexPath:itemIndexPath];
    }
    result.center = circleCenter_;
    result.alpha = 0.0f;
    
    return result;
}

- (UICollectionViewLayoutAttributes*)finalLayoutAttributesForDisappearingItemAtIndexPath:(NSIndexPath *)itemIndexPath {
    UICollectionViewLayoutAttributes* result = [super finalLayoutAttributesForDisappearingItemAtIndexPath:itemIndexPath];

    if (!result){
        result = [self layoutAttributesForItemAtIndexPath:itemIndexPath];
    }
    
    result.center = circleCenter_;
    result.alpha = 0.0f;
    result.transform3D = CATransform3DMakeScale(0.1, 0.1, 0.1);
    
    return result;
}

- (NSArray*)layoutAttributesForElementsInRect:(CGRect)rect {
    NSMutableArray* result = [NSMutableArray new];
    for(NSInteger i = 0; i< cellsCount_; i++) {
        NSIndexPath* indexPath = [NSIndexPath indexPathForRow:i inSection:0];
        [result addObject:[self layoutAttributesForItemAtIndexPath:indexPath]];
    }
    return result;
}

@end
