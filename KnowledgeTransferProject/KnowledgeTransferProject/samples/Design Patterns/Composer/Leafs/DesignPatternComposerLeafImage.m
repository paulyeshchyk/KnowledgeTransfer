//
//  DesignPatternComposerLeafImage.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 5/8/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "DesignPatternComposerLeafImage.h"
#import "DrawingSnippets.h"

@implementation DesignPatternComposerLeafImage
- (void)composer:(id<DesignPatternCompositorProtocol>)composer drawInContext:(CGContextRef)contextRef atPoint:(CGPoint)point{
    CGContextSaveGState(contextRef);
    UIImage* image = [UIImage imageNamed:@"appcode_icon.png"];
    NSAssert(image != nil,@"image not found");
    CGImageRef imageRef = [image CGImage];
    
//    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    //Quartz 2d uses a different co-ordinate system, where the origin is in the lower left corner.
    //The x co-ordinate system matches, so you will need to flip the y co-ordinates.
    CGContextTranslateCTM(contextRef, 0, self.size.height);
    
    //The Quartz 2D programming guide recommends using ScaleCTM and passing negative values to flip the image.
    CGContextScaleCTM(contextRef, 1.0, -1.0);
    
    CGContextDrawImage(contextRef, CGRectMake(point.x,(-1)*point.y,self.size.width,self.size.height), imageRef);
    CGContextRestoreGState(contextRef);
}

@end
