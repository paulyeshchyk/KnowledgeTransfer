//
//  Sprite.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/25/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SpaceObject.h"
@class Sprite;

@interface Sprite : SpaceObject <NSCopying> {
    CGFloat width;
    CGFloat height;
}
@property (nonatomic, strong) UIColor* strokeColor;
@property (nonatomic, strong) UIColor* fillColor;
@property (nonatomic, assign) CGFloat scale;// scale factor

//@property (nonatomic, assign) CGPoint position;
@property (nonatomic, assign) int frame;//animation

- (void)drawOutlinePath:(CGContextRef) context;
- (void)drawBody:(CGContextRef)context;
- (void)drawInContext:(CGContextRef)context;

//@property (nonatomic, assign) CGFloat speed;//pixels per frame
//@property (nonatomic, getter = getAngle, setter = setAngle:) CGFloat angle;//angle of moving
//@property (nonatomic, assign) CGFloat rotation;//rotation of sprite around center
//@property (nonatomic, assign) CGFloat cosTheta;//precomputed for speed
//@property (nonatomic, assign) CGFloat sinTheta;//precomputed for speed

//@property (nonatomic, assign) CGRect box;// our bounding box
//@property (nonatomic, assign) BOOL render;// true when we're rendering
//@property (nonatomic, assign) BOOL offScreen;// true when we're off the screen
//@property (nonatomic, assign) BOOL wrap;// true if you want the motion to wrap on the screen
//- (void)moveAnywhere;
@end
