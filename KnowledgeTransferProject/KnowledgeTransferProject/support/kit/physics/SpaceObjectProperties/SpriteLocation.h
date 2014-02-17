//
//  SpriteLocation.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SpriteProperty.h"
@interface SpriteLocation : NSObject <NSCopying, NSCoding, SpriteProperty>

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat z;
@property (nonatomic, assign) CGFloat t;

+(SpriteLocation*)locationWithX:(CGFloat)x y:(CGFloat)y z:(CGFloat)z t:(CGFloat)t;

@end
