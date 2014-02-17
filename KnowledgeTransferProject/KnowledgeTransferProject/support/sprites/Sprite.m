//
//  Sprite.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/25/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "Sprite.h"

@implementation Sprite
@synthesize strokeColor;
@synthesize fillColor;
@synthesize scale;


- (id)copyWithZone:(NSZone *)zone {
    Sprite* spriteCopy = [[Sprite allocWithZone:zone] init];
    if (spriteCopy){
        spriteCopy.strokeColor = self.strokeColor;
        spriteCopy.fillColor = self.fillColor;
    }
    return spriteCopy;
}

- (BOOL)isEqual:(id)object {
    return YES;
}

- (id)init {
    self = [super init];
    if (self) {
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"\ntag: %@ ", self.tag];
}

//- (void)setAngle:(CGFloat)p_angle {
//    rotation = radians (p_angle);
//    cosTheta = cos (rotation);
//    sinTheta = sin (rotation);
//}
//
//- (CGFloat)angle {
//    return rotation * 180.0f / M_PI;
//}
//

- (void)drawOutlinePath:(CGContextRef)context {
    NSCAssert (context != NULL, @"context should not be NULL");

}

- (void)drawBody:(CGContextRef)context {
    NSCAssert (context != NULL, @"context should not be NULL");

    CGContextSetFillColorWithColor (context, self.fillColor.CGColor);
    [self drawOutlinePath:context];
    CGContextDrawPath (context, kCGPathFill);
}

- (CGSize)size {
    return CGSizeMake(width, height);
}

- (void)drawInContext:(CGContextRef)context {
    NSCAssert (context != NULL, @"context should not be NULL");
/*
    
    CGContextSaveGState (context);

    CGAffineTransform transform = CGAffineTransformIdentity;

    CGFloat x = position.x;
    CGFloat y = -position.y;
//    transform = CGAffineTransformRotate (transform, rotation);
    transform = CGAffineTransformScale (transform, scale, scale);

    
    CGAffineTransform rotationTransform = CGAffineTransformMake(cos(radians(rotation)),  sin(radians(rotation)),
                                                                -sin(radians(rotation)), cos(radians(rotation)),
                                                                x-x*cos(radians(rotation))+y*sin(radians(rotation)), y-x*sin(radians(rotation))-y*cos(radians(rotation)));
    CGAffineTransform mirrorTransform =CGAffineTransformMake(1,  0,
                                                             0, -1,
                                                             0, self.size.height);
    
    
    
    CGAffineTransform translateTransform = CGAffineTransformConcat(mirrorTransform,rotationTransform);
    
    transform = CGAffineTransformConcat(transform, translateTransform);
    transform = CGAffineTransformTranslate (transform, x, y);

    
    CGContextConcatCTM (context, transform);

    [self drawBody:context];

    CGContextRestoreGState (context);
 */
}




//- (void)moveAnywhere{
//    NSArray* availablePoints = [spriteMaster availablePointsForSprite:self];
//    NSInteger count = [availablePoints count];
//    if (count != 0) {
//        NSValue* desire = [availablePoints objectAtIndex:random()%count];
//        self.position = [desire CGPointValue];
//        
//    }
//}

- (NSUInteger)hash {
    return [self.tag hash];
}

@end
