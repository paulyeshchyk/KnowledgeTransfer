//
//  QuartzSample4TransformationsScalingView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample4TransformationsScalingView.h"

@implementation QuartzSample4TransformationsScalingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    UIImage* image = [UIImage imageNamed:@"Sample 2. DrawBitmap.png"];
    NSAssert(image != nil,@"image not found");
    CGImageRef imageRef = [image CGImage];
    
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    CGFloat scaleFactorX = 3.0f;
    CGFloat scaleFactorY = 4.0f;

    CGAffineTransform transform = CGAffineTransformMake ( scaleFactorX, 0,
                                                          0,            -1*scaleFactorY,
                                                          0,            image.size.height*scaleFactorY);
    
    CGContextConcatCTM(contextRef, transform);
    //or
    //CGContextTranslateCTM(contextRef, 0, image.size.height*scaleFactorY);
    //CGContextScaleCTM(contextRef, 1.0*scaleFactorX, -1.0*scaleFactorY);
    
    
    CGContextDrawImage(contextRef, CGRectMake(0,0,image.size.width,image.size.height), imageRef);
}


@end
