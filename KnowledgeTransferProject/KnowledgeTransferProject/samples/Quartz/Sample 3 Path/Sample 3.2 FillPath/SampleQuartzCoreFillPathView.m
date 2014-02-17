//
//  SampleQuartzCoreFillPathView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleQuartzCoreFillPathView.h"

@implementation SampleQuartzCoreFillPathView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBStrokeColor(contextRef, 0.0f, 0.0f, 1.0f, 1.0f);
    CGContextSetRGBFillColor(contextRef, 0.0f, 1.0f, 0.0f, 1.0f);
    
    CGContextBeginPath(contextRef);
    
    CGContextAddEllipseInRect(contextRef, CGRectMake(50,50,100,100));
    
    CGContextFillPath(contextRef);
    
    
}

@end
