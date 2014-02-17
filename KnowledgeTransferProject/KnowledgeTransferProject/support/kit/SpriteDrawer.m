//
//  SpriteDrawer.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SpriteDrawer.h"
#import "SpriteSubstance.h"
#import "SpaceObjectMediator.h"

@implementation SpriteDrawer

+ (SpriteDrawer*)instance {
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)drawSprite:(Sprite*)sprite withinSpace:(Space*)space andContext:(CGContextRef)context{
    NSCAssert(sprite != nil,@"Sprite is nil");
    NSCAssert(space != nil,@"Space is nil");
    NSCAssert(context != nil,@"Context is nil");

    
    SpriteLocation* spriteLocation   = [SpaceObjectMediator locationForSprite:sprite];
    SpriteSubstance* spriteSubstance = [SpaceObjectMediator substanceForSprite:sprite];
    

    CGContextSaveGState (context);
    
    CGAffineTransform transform = CGAffineTransformIdentity;
    
    CGFloat x = spriteLocation.x;
    CGFloat y = -spriteLocation.y;
    //    transform = CGAffineTransformRotate (transform, rotation);
    CGFloat scale = 1;//assume, scale == 1
    CGFloat rotation =0;//assume rotation = 0;
    transform = CGAffineTransformScale (transform, scale, scale);
    
    
    CGAffineTransform rotationTransform = CGAffineTransformMake(cos(radians(rotation)),  sin(radians(rotation)),
                                                                -sin(radians(rotation)), cos(radians(rotation)),
                                                                x-x*cos(radians(rotation))+y*sin(radians(rotation)), y-x*sin(radians(rotation))-y*cos(radians(rotation)));
    CGAffineTransform mirrorTransform =CGAffineTransformMake(1,  0,
                                                             0, -1,
                                                             0, spriteSubstance.height);
    
    
    
    CGAffineTransform translateTransform = CGAffineTransformConcat(mirrorTransform,rotationTransform);
    
    transform = CGAffineTransformConcat(transform, translateTransform);
    transform = CGAffineTransformTranslate (transform, x, y);
    
    
    CGContextConcatCTM (context, transform);
    
    [sprite drawBody:context];
    
    CGContextRestoreGState (context);
    
}
@end
