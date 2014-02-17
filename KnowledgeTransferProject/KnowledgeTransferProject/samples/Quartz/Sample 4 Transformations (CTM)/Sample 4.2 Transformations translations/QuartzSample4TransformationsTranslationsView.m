//
//  QuartzSample4TransformationsTranslationsView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample4TransformationsTranslationsView.h"

@implementation QuartzSample4TransformationsTranslationsView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    UIImage* image = [UIImage imageNamed:@"Sample 2. DrawBitmap.png"];
    NSAssert(image != nil,@"image not found");
    CGImageRef imageRef = [image CGImage];
    
    CGContextRef contextRef = UIGraphicsGetCurrentContext();

    CGFloat translationX = 78.0f;
    CGFloat translationY = 50.0f;
    
    /*
                             | a   b  0 |
     (x'  y'  1) = (x  y  1) | c   d  0 |
                             |tx  ty  1 |
     */
    
    /*
        to convert uiview coordinates system to coregraphics coordinate system use
        multiply d by (-1)
        add image height to ty

     */
    /*
                             | 1    0     0 |
     (x'  y'  1) = (x  y  1) | 0   -1     0 |
                             | 0   height 1 |
     */
    
    /*
        to translate y coordinate
        add translation value to ty
     */
    
    
    CGAffineTransform transform = CGAffineTransformMake(  1,  0,
                                                          0,  -1,
                                                          translationX, image.size.height+translationY);
    CGContextConcatCTM(contextRef, transform);
    

    // or
    
    
//    CGContextTranslateCTM(contextRef, translationX, image.size.height+translationY);
//    CGContextScaleCTM(contextRef,1, -1);
    
    
    
    CGContextDrawImage(contextRef, CGRectMake(0,0,image.size.width,image.size.height), imageRef);
}

@end
