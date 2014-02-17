//
//  NSValue+Sprites.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "Sprite.h"
#import "SpriteLocation.h"

@interface NSValue (Sprites)

+(NSValue*)valueWithSprite:(Sprite*)sprite;
+(NSValue*)valueWithSpriteLocation:(SpriteLocation*)spriteLocation;

@end
