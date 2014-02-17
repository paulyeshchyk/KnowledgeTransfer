//
//  SampleQuartzCoreDrawCoordinatesAndRectangleView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/24/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleQuartzCoreDrawCoordinatesAndRectangleView.h"
#import "DrawingSnippets.h"

@implementation SampleQuartzCoreDrawCoordinatesAndRectangleView

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
    CGContextRef context = UIGraphicsGetCurrentContext();
    drawCoordinateAxes(context);
    
 
    CGContextSaveGState(context);
    
    CGRect ourRect = { {0., 0.} , {72., 72.}};
    CGContextFillRect(context, ourRect);
    
    
    
    CGContextRotateCTM(context, M_PI/6);
    // Scale the coordinate system by 0.5 in x and 2.0 in y.
    CGContextScaleCTM(context, 0.5, 2.0);
    CGContextSetRGBStrokeColor(context, 0.69, 0.486, 0.722, 1.0);
    CGContextSetRGBFillColor(context, 0.69, 0.486, 0.722, 0.7);
    // Draw the coordinate axes after the transformations.
    drawCoordinateAxes(context);
    // Fill the rotated and scaled rectangle.
    CGContextFillRect(context, ourRect);
    CGContextRestoreGState(context);
    
    
}

@end
