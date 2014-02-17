//
//  VectorSprite.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/25/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "VectorSprite.h"

@interface VectorSprite (){
}

@end

@implementation VectorSprite
@synthesize points;
@synthesize pointsCount;
@synthesize vectorScale;

- (id)copyWithZone:(NSZone *)zone {
    VectorSprite* vectorSpriteCopy = [[VectorSprite allocWithZone:zone] init];
    if (vectorSpriteCopy) {
        vectorSpriteCopy.points = self.points;
        vectorSpriteCopy.pointsCount = self.pointsCount;
        vectorSpriteCopy.vectorScale = self.vectorScale;
    }
    return vectorSpriteCopy;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@\npointsCount: %d", [super description],pointsCount];
}

//
//- (void)setScale:(CGFloat)scale {
//    self.vectorScale = scale;
//    scale = 1.0f;
//    [self updateSize];
//}

- (void)drawOutlinePath:(CGContextRef)context {
    CGContextBeginPath (context);
    CGContextSetStrokeColorWithColor (context, self.strokeColor.CGColor);
    CGContextSetFillColorWithColor(context, self.fillColor.CGColor);
    CGContextFillPath(context);

    for (int i = 0; i < pointsCount; i++) {
        CGFloat x1 = points[i * 2] * vectorScale;
        CGFloat y1 = points[i * 2 + 1] * vectorScale;

        if (i == 0) {
            CGContextMoveToPoint (context, x1, y1);
        } else {
            CGContextAddLineToPoint (context, x1, y1);
        }
    }
    CGContextClosePath (context);
}

- (void)drawBody:(CGContextRef)context {

    [self drawOutlinePath:context];
    CGContextDrawPath (context,kCGPathFillStroke);

    [self drawOutlinePath:context];
    CGContextClip (context);
//    [self gradientFill: context];
}

- (void)updateSize {
    CGFloat minX = 0;
    CGFloat minY = 0;
    CGFloat maxX = 0;
    CGFloat maxY = 0;

    for (int i = 0; i < pointsCount; i++) {
        CGFloat x1 = points[i * 2] * vectorScale;
        CGFloat y1 = points[i * 2 + 1] * vectorScale;

        minX = MIN(minX,x1);
        maxX = MAX(maxX,x1);
        minY = MIN(minY,y1);
        maxY = MAX(maxY,y1);

    }

    width = ceil (maxX - minX);
    height = ceil (maxY - minY);
    
}

+ (VectorSprite*)spriteWithPoints:(CGFloat*)rawPoints pointsCount:(int)count {
    VectorSprite* v = [[VectorSprite alloc] init];
    v.pointsCount = count;
    v.points = rawPoints;
    v.vectorScale = 1.0;
    [v updateSize];
    return v;
}

@end
