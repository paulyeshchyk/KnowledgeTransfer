//
//  SampleQuartzCoreDrawCoordinatesView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/24/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleQuartzCoreDrawCoordinatesView.h"
#import "DrawingSnippets.h"


@implementation SampleQuartzCoreDrawCoordinatesView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    drawCoordinateAxes(context);
}

@end
