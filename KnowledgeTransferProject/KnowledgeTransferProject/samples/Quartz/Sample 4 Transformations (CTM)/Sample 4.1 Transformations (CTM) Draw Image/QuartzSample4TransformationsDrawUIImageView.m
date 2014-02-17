//
//  QuartzSample4TransformationsView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample4TransformationsDrawUIImageView.h"

@implementation QuartzSample4TransformationsDrawUIImageView

- (void)drawRect:(CGRect)rect
{
    
    UIImage* image = [UIImage imageNamed:@"Sample 2. DrawBitmap.png"];
    NSAssert(image != nil,@"image not found");
    CGImageRef imageRef = [image CGImage];
    
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    //Quartz 2d uses a different co-ordinate system, where the origin is in the lower left corner.
    //The x co-ordinate system matches, so you will need to flip the y co-ordinates.
    CGContextTranslateCTM(contextRef, 0, image.size.height);
    
    //The Quartz 2D programming guide recommends using ScaleCTM and passing negative values to flip the image.
    CGContextScaleCTM(contextRef, 1.0, -1.0);
    
    CGContextDrawImage(contextRef, CGRectMake(0,0,image.size.width,image.size.height), imageRef);
}

@end
