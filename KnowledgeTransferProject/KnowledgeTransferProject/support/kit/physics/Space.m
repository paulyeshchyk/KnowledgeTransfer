//
//  Space.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "Space.h"

@interface Space(){
    NSMutableDictionary* sprites_;
}
@end

@implementation Space

+ (Space*)instance {
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}


- (id)init {
    self = [super init];
    if (self){
        sprites_ = [NSMutableDictionary new];
    }
    return self;
}

- (void)setSprite:(Sprite*)sprite forKey:(id)key {
    NSCAssert(nil == [sprites_ objectForKey:key],@"Sprite for key already defined");
    [sprites_ setObject:sprite forKey:key];
}

- (void)replaceSprite:(Sprite*)sprite forKey:(id)key {
    [self removeSpriteForKey:key];
    [self setSprite:sprite forKey:key];
}

- (void)removeSpriteForKey:(id)key {
    [sprites_ removeObjectForKey:key];
}

- (Sprite*)spriteForKey:(id)key {
    return [sprites_ objectForKey:key];
}

- (void)removeAllSprites {
    [sprites_ removeAllObjects];
}

- (void)enumerateSpritesWithBlock:(void(^)(Space* space, Sprite* sprite))block{
    
    for(Sprite* sprite in [sprites_ objectEnumerator]){
        block(self, sprite);
    }
}

@end
