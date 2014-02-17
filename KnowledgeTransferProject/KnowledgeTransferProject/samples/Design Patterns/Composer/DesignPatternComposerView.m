//
//  DesignPatternComposerView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 5/7/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "DesignPatternComposerView.h"
#import "DesignPatternComposerCompositionFigureL.h"

@interface DesignPatternComposerView (){
    DesignPatternComposerCompositionFigureL* figureL_;
}

@end

@implementation DesignPatternComposerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
        
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
}

- (void)setup {
    figureL_ = [DesignPatternComposerCompositionFigureL new];
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();


    [figureL_ composer:self drawInContext:context atPoint:CGPointMake(40,40)];
}

- (void)compose:(id<DesignPatternCompositionProtocol>) composition inContext:(CGContextRef)context atPoint:(CGPoint)point{

    for (NSUInteger i=0;i<[composition itemsCount];i++) {
        id <DesignPatternLeaf> item = [composition itemAtIndex:i];

        CGPoint nextPoint = CGPointMake(point.x+item.origin.x,point.y + item.origin.y);
        [item composer:self drawInContext:context atPoint:nextPoint];
    }
    
}

@end
