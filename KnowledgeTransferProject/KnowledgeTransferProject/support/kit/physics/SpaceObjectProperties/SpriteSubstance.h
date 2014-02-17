//
//  SpriteSubstance.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SpriteProperty.h"

@interface SpriteSubstance : NSObject <SpriteProperty>
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat depth;
@property (nonatomic, assign) CGFloat density;
+(SpriteSubstance*)substanceWithWidth:(CGFloat)width height:(CGFloat)height depth:(CGFloat)depth density:(CGFloat) density;
@end
