//
//  DesignPatternComposerCompositionFigureL.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 5/7/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "DesignPatternComposerCompositionFigureL.h"
#import "DesignPatternComposerLeafSquare.h"
#import "DesignPatternComposerLeafImage.h"

@implementation DesignPatternComposerCompositionFigureL

- (id)init
{
    self = [super init];
    if (self) {
        DesignPatternComposerLeafSquare* leaf;
        leaf = [DesignPatternComposerLeafSquare new];
        leaf.origin = CGPointMake(0, 0);
        leaf.size = CGSizeMake(90,30);
        [self addItem:leaf];
        
        leaf = [DesignPatternComposerLeafSquare new];
        leaf.origin = CGPointMake(0, 30);
        leaf.size = CGSizeMake(60,30);
        [self addItem:leaf];
        
        DesignPatternComposerLeafImage* leafImage = [DesignPatternComposerLeafImage new];
        leafImage.origin = CGPointMake(0, 60);
        leafImage.size = CGSizeMake(30,30);
        [self addItem:leafImage];
        
        leaf = [DesignPatternComposerLeafSquare new];
        leaf.origin = CGPointMake(0, 90);
        leaf.size = CGSizeMake(30,30);
        [self addItem:leaf];
        
        leaf = [DesignPatternComposerLeafSquare new];
        leaf.origin = CGPointMake(30, 60);
        leaf.size = CGSizeMake(30,60);
        [self addItem:leaf];

        leaf = [DesignPatternComposerLeafSquare new];
        leaf.origin = CGPointMake(60, 30);
        leaf.size = CGSizeMake(30,90);
        [self addItem:leaf];
    }
    return self;
}

@end
