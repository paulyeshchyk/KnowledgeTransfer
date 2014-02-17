//
//  QuartzSample4TransformationsRotationView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample4TransformationsRotationView.h"

@implementation QuartzSample4TransformationsRotationView

- (void)drawRect:(CGRect)rect
{
    
    UIImage* image = [UIImage imageNamed:@"Sample 2. DrawBitmap.png"];
    NSAssert(image != nil,@"image not found");
    CGImageRef imageRef = [image CGImage];
    CGFloat degree = 45.0f;
    
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    
//    //rotate first
//    CGContextRotateCTM(contextRef, radians(degree));
//    //shift down
//    CGContextTranslateCTM(contextRef, 0, image.size.height);
//    //flip
//    CGContextScaleCTM(contextRef, 1.0, -1.0);
    
    CGFloat x = image.size.width / 4;
    CGFloat y = 0;
    CGAffineTransform rotationTransform = CGAffineTransformMake(cos(radians(degree)),  sin(radians(degree)),
                                                                -sin(radians(degree)), cos(radians(degree)),
                                                                x-x*cos(radians(degree))+y*sin(radians(degree)), y-x*sin(radians(degree))-y*cos(radians(degree)));
    CGAffineTransform translateTransform =CGAffineTransformMake(1,  0,
                                                                0, -1,
                                                                0, image.size.height);
    CGAffineTransform transform = CGAffineTransformConcat(translateTransform,rotationTransform);
    CGContextConcatCTM(contextRef, transform);

    
    CGContextDrawImage(contextRef, CGRectMake(0,0,image.size.width,image.size.height), imageRef);
}


@end
