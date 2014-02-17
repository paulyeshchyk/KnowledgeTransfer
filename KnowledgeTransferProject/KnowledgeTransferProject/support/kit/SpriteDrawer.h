//
//  SpriteDrawer.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sprite.h"
#import "Space.h"

@interface SpriteDrawer : NSObject

- (void)drawSprite:(Sprite*)sprite withinSpace:(Space*)space andContext:(CGContextRef)context;
+ (SpriteDrawer*)instance;
@end
