//
//  QuartzSample4TransformationsLoopRotationView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/24/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample4TransformationsLoopRotationView.h"

@implementation QuartzSample4TransformationsLoopRotationView

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
//    float redColor[] = {0.9f, 0.1f, 0.1f, 1.0f};
    

    CGContextRef context = UIGraphicsGetCurrentContext();

    CGAffineTransform theTransform = CGAffineTransformMakeRotation(radians(45));
    theTransform = CGAffineTransformScale(theTransform, 1, 2);
    CGContextTranslateCTM(context, 100., 100.);
    
    for (int i=0;i<200;i++) {

        CGContextSaveGState(context);

        CGContextConcatCTM(context, theTransform);
        CGContextBeginPath(context);
        CGContextAddArc(context, 0., 0., 45., 0., 2*M_PI, 0);
        CGContextSetRGBFillColor(context, i/200.0f, 0.0f, 0.0f, 1.0f);
        CGContextDrawPath(context, kCGPathFill);
        CGContextRestoreGState(context);
        
        CGContextTranslateCTM(context, 1., 0.);
        
    }
    
    
    

}

@end
