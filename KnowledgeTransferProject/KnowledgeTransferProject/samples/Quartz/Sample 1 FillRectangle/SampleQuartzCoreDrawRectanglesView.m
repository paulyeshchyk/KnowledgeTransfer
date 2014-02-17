//
//  SampleQuartzCoreDrawRectanglesView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleQuartzCoreDrawRectanglesView.h"
#import <QuartzCore/QuartzCore.h>

@implementation SampleQuartzCoreDrawRectanglesView

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

    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(contextRef, 1.0f, 0.0f, 0.0f, 1.0f);
    CGContextSetRGBStrokeColor(contextRef, 0.0f, 1.0f, 0.0f, 1.0f);
    CGContextFillRect(contextRef, CGRectMake(0,0,100,50));
    CGContextStrokeRectWithWidth(contextRef, CGRectMake(0,0,100,50), 2);
    
}


@end
