//
//  SpaceObjectMediator.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SpriteLocation.h"
#import "SpriteSubstance.h"
#import "Sprite.h"
#import "Space.h"

@interface SpaceObjectMediator : NSObject


+ (SpriteLocation*)locationForSprite:(Sprite*)sprite;
+ (SpriteSubstance*)substanceForSprite:(Sprite*)sprite ;


@end
