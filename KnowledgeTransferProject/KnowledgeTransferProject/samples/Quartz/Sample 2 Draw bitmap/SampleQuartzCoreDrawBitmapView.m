//
//  SampleQuartzCoreDrawBitmapView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleQuartzCoreDrawBitmapView.h"
#import "DrawingSnippets.h"


@implementation SampleQuartzCoreDrawBitmapView

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

    CGFloat myWidth = 100;
    CGFloat myHeight = 200;
    CGRect myBoundingBox = CGRectMake (0, 0, myWidth, myHeight);
    CGContextRef myBitmapContext = bitmapContextRef (400, 300);

    CGContextSetRGBFillColor (myBitmapContext, 1, 0, 0, 1);
    CGContextFillRect (myBitmapContext, CGRectMake (0, 0, 200, 100 ));
    CGContextSetRGBFillColor (myBitmapContext, 0, 0, 1, .5);
    CGContextFillRect (myBitmapContext, CGRectMake (0, 0, 100, 200 ));
    CGImageRef myImage = CGBitmapContextCreateImage (myBitmapContext);
    
    CGContextDrawImage(contextRef, myBoundingBox, myImage);
    
    char *bitmapData = CGBitmapContextGetData(myBitmapContext);

    CGContextRelease (myBitmapContext);
    if (bitmapData) free(bitmapData);
    CGImageRelease(myImage);
    
}


@end
