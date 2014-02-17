//
//  DesignPatternComposerLeaf.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 5/7/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "DesignPatternComposerLeaf.h"

@implementation DesignPatternComposerLeaf
@synthesize origin;
@synthesize size;


- (void)addItem:(id<DesignPatternLeaf>)item {
    NSCAssert(NO,@"leaf should not contain any component");
}

- (void)removeItem:(id<DesignPatternLeaf>)item {
    NSCAssert(NO,@"leaf has no components");
}

- (NSUInteger)itemsCount {
    NSCAssert(NO,@"leaf has no components");
    return 0;
}

- (id<DesignPatternLeaf>)itemAtIndex:(NSUInteger)index {
    NSCAssert(NO,@"leaf has no components");
    return nil;
}

- (void)composer:(id<DesignPatternCompositorProtocol>)composer drawInContext:(CGContextRef)contextRef atPoint:(CGPoint)point{
    NSCAssert(NO,@"method should be implemented");
}

@end
