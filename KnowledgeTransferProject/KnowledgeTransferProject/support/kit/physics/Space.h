//
//  Space.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "Sprite.h"
#import "SpriteProperty.h"

@interface Space : NSObject
+ (Space*)instance;
- (void)setSprite:(Sprite*)sprite forKey:(id)key;
- (Sprite*)spriteForKey:(id)key;
- (void)replaceSprite:(Sprite*)sprite forKey:(id)key;
- (void)removeSpriteForKey:(id)key;
- (void)removeAllSprites;
- (void)enumerateSpritesWithBlock:(void(^)(Space* space, Sprite* sprite))block;


@end
