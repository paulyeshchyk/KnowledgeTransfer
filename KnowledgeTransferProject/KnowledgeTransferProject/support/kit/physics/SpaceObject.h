//
//  SpaceObject.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SpriteProperty.h"

@interface SpaceObject : NSObject <NSCopying, NSCoding>
@property (nonatomic, strong) id tag;

- (void)addProperty:(id<SpriteProperty>)spriteProperty;
- (NSArray*)propertyByClass:(SpritePropertyClass) spritePropertyClass;

@end
