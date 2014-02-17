//
//  DrawingSnippets.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/24/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DrawingSnippets.h"

#define kTickLength 5.0
#define kTickDistance 72.0
#define kAxesLength (20*kTickDistance)


void drawPoint(CGContextRef context, CGPoint p) {
    NSCAssert(context != NULL,@"context should not be null");

    CGContextSaveGState(context);
    // Set the stroke color to opaque black.
    CGContextSetRGBStrokeColor(context, 0, 0, 0, 1);
    CGContextSetLineWidth(context, 5);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextMoveToPoint(context, p.x, p.y);
    CGContextAddLineToPoint(context, p.x, p.y);
    CGContextStrokePath(context);
    CGContextRestoreGState(context);
}


void drawCoordinateAxes(CGContextRef context) {
    
    NSCAssert(context != NULL,@"context should not be null");
    
    int i;
    float t;
    float tickLength = kTickLength;
    CGContextSaveGState(context);
    CGContextBeginPath(context);
    // Paint the x axis in red.
    CGContextSetRGBStrokeColor(context, 1, 0, 0, 1);
    CGContextMoveToPoint(context, -kTickLength, 0.0);
    CGContextAddLineToPoint(context, kAxesLength, 0.0);
    CGContextDrawPath(context, kCGPathStroke);
    // Paint the y axis in blue.
    CGContextSetRGBStrokeColor(context, 0, 0, 1, 1);
    CGContextMoveToPoint(context, 0, -kTickLength);
    CGContextAddLineToPoint(context, 0, kAxesLength);
    CGContextDrawPath(context, kCGPathStroke);
    // Paint the x axis tick marks in red.
    CGContextSetRGBStrokeColor(context, 1, 0, 0, 1);
    for(i = 0; i < 2 ; i++)
    {
        for(t=0.; t < kAxesLength ; t += kTickDistance){
            CGContextMoveToPoint(context, t, -tickLength);
            CGContextAddLineToPoint(context, t, tickLength);
        }
        CGContextDrawPath(context, kCGPathStroke); CGContextRotateCTM(context, M_PI/2.);
        // Paint the y axis tick marks in blue.
        CGContextSetRGBStrokeColor(context, 0, 0, 1, 1);
    }
    drawPoint(context, CGPointZero);
    CGContextRestoreGState(context);
}

CGContextRef bitmapContextRef(int pixelWide, int pixelHeight) {
    CGContextRef context = NULL;
    int bitmapBytesPerRow = (pixelWide * 4);
    int bitmapBytesCount  = (bitmapBytesPerRow * pixelHeight);
    
    void* bitmapData = malloc(bitmapBytesCount);
    
    if (bitmapData != NULL) {
        
        CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
        context = CGBitmapContextCreate(bitmapData, pixelWide, pixelHeight, 8, bitmapBytesPerRow, colorSpace, kCGImageAlphaPremultipliedFirst);
        CGColorSpaceRelease(colorSpace);
    }
    
    return context;
    
    
    
}

