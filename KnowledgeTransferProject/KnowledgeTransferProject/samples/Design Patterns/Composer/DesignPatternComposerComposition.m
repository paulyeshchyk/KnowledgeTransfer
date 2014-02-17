//
//  DesignPatternComposerComposition.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 5/7/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "DesignPatternComposerComposition.h"
#import <QuartzCore/QuartzCore.h>

@interface DesignPatternComposerComposition(){
    NSMutableArray* items_;
}

@end

@implementation DesignPatternComposerComposition
@synthesize origin;
@synthesize size;
@synthesize compositor;

- (id)init {
    self = [super init];
    if (self){
        items_ = [NSMutableArray new];
    }
    return self;
}

- (void)addItem:(id<DesignPatternLeaf>)item {
    [items_ addObject:item];
}

- (void)removeItem:(id<DesignPatternLeaf>)item {
    [items_ removeObject:item];
}

- (NSUInteger)itemsCount {
    return [items_ count];
}

- (id<DesignPatternLeaf>)itemAtIndex:(NSUInteger)index {
    return [items_ objectAtIndex:index];
}

- (void)composer:(id<DesignPatternCompositorProtocol>)composer drawInContext:(CGContextRef)contextRef atPoint:(CGPoint)point{
    
    [composer compose:self inContext:contextRef atPoint:point];
    
}

@end
