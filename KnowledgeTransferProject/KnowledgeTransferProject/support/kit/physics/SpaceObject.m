//
//  SpaceObject.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SpaceObject.h"

@interface SpaceObject(){
    NSMutableArray* spriteProperties_;
}
@end

@implementation SpaceObject
//@synthesize size;
@synthesize tag;

- (id)init {
    self = [super init];
    if (self){
        spriteProperties_ = [NSMutableArray new];
    }
    return self;
}


- (void)encodeWithCoder:(NSCoder *)aCoder {
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self){
    }
    return self;
}



- (id)copyWithZone:(NSZone *)zone {
    SpaceObject* result = [[SpaceObject allocWithZone:zone] init];
    if (result){
        spriteProperties_ = [NSMutableArray new];
    }
    return result;
    
}


- (void)addProperty:(id<SpriteProperty>)spriteProperty {
    NSCAssert(spriteProperty != nil,@"Sprite should not be nil");
    
    [spriteProperties_ addObject:spriteProperty];
    
}

- (NSArray*)propertyByClass:(SpritePropertyClass) spritePropertyClass {
    return [spriteProperties_ filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"propertyclass == %d",spritePropertyClass]];
}




@end
