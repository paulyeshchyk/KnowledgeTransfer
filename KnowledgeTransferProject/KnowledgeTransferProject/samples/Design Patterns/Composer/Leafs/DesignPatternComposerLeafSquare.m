//
//  DesignPatternComposerLeafSquare.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 5/8/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "DesignPatternComposerLeafSquare.h"

@implementation DesignPatternComposerLeafSquare

- (void)composer:(id<DesignPatternCompositorProtocol>)composer drawInContext:(CGContextRef)contextRef atPoint:(CGPoint)point{
    CGRect itemRect = CGRectMake(point.x,point.y,self.size.width, self.size.height);
    CGContextSaveGState(contextRef);
    CGContextSetRGBFillColor(contextRef, 1.0f, 0.0f, 0.0f, 1.0f);
    CGContextSetRGBStrokeColor(contextRef, 0.0f, 1.0f, 0.0f, 1.0f);
    CGContextFillRect(contextRef, itemRect);
    CGContextStrokeRectWithWidth(contextRef, itemRect, 2);
    CGContextRestoreGState(contextRef);
}

@end
