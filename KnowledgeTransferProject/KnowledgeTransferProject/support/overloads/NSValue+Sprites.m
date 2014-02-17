//
//  NSValue+Sprites.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "NSValue+Sprites.h"

@implementation NSValue (Sprites)

+(NSValue*)valueWithSprite:(Sprite*)sprite {
    NSValue *theValue = [NSValue value:&sprite withObjCType:@encode(void *)];
    return theValue;
}

+(NSValue*)valueWithSpriteLocation:(SpriteLocation*)spriteLocation {
    NSValue *theValue = [NSValue value:&spriteLocation withObjCType:@encode(void *)];
    return theValue;
}

@end
