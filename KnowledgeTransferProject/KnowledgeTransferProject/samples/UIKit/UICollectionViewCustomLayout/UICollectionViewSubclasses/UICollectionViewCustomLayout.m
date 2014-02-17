//
//  UICollectionViewCustomLayout.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 11/18/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "UICollectionViewCustomLayout.h"

@implementation UICollectionViewCustomLayout

- (id)init {
    self = [super init];
    if (self){
        self.itemSize = CGSizeMake(100,20);
        self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    }
    return self;
}

@end
