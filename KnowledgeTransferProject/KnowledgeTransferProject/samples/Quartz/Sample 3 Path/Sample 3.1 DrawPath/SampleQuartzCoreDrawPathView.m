//
//  SampleQuartzCoreCGPathView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleQuartzCoreDrawPathView.h"

@implementation SampleQuartzCoreDrawPathView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)reloadData {
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextBeginPath(contextRef);
    
    CGContextMoveToPoint(contextRef, 0.0f, 0.0f);
    CGContextAddLineToPoint(contextRef, 100.0f, 100.0f);
    CGContextAddCurveToPoint(contextRef, 100.0f, 100.0f, 120.0f, 20.0f, 220.0f, 220.0f);
    
    
    CGContextSetRGBStrokeColor(contextRef, 1.0f, 0.0f, 1.0f, 1.0f);
    
    CGContextStrokePath(contextRef);
}

@end
