//
//  VectorSprite.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/25/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "Sprite.h"

@interface VectorSprite : Sprite
@property (nonatomic, assign) CGFloat* points;
@property (nonatomic, assign) int pointsCount;
@property (nonatomic, assign) CGFloat vectorScale;

- (void)updateSize;
+ (VectorSprite *) spriteWithPoints: (CGFloat *) rawPoints pointsCount: (int) count;
@end
