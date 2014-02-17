//
//  DesignPatternCompositionProtocol.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 5/7/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

@protocol DesignPatternCompositionProtocol;
@protocol DesignPatternCompositorProtocol;
@protocol DesignPatternLeaf;

@protocol DesignPatternLeaf <NSObject>
@required
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize size;
- (void)composer:(id<DesignPatternCompositorProtocol>)composer drawInContext:(CGContextRef)contextRef atPoint:(CGPoint)point;
@end

@protocol DesignPatternCompositorProtocol <NSObject>
@required
- (void)compose:(id<DesignPatternCompositionProtocol>)composition inContext:(CGContextRef)context atPoint:(CGPoint)point;
@end


@protocol DesignPatternCompositionProtocol <DesignPatternLeaf>
@optional
@property (nonatomic, weak) id<DesignPatternCompositorProtocol> compositor;
@required
- (void)addItem:(id<DesignPatternLeaf>)item;
- (void)removeItem:(id<DesignPatternLeaf>)item;
- (NSUInteger)itemsCount;
- (id<DesignPatternLeaf>)itemAtIndex:(NSUInteger)index;

@end
