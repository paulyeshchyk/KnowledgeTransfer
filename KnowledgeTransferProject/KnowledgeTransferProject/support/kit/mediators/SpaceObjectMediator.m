//
//  SpaceObjectMediator.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SpaceObjectMediator.h"

@implementation SpaceObjectMediator

+ (SpriteLocation*)locationForSprite:(Sprite*)sprite {
    NSArray* propertiesLocation = [sprite propertyByClass:SpritePropertyLocation];
    NSCAssert([propertiesLocation count]==1,@"location not defined");
    id location = [propertiesLocation objectAtIndex:0];
    NSCAssert([location isKindOfClass:[SpriteLocation class]],@"wrong class for property");
    return (SpriteLocation*)location;
}

+ (SpriteSubstance*)substanceForSprite:(Sprite*)sprite {

    NSArray* propertiesSubstancies = [sprite propertyByClass:SpritePropertySubstance];
    NSCAssert([propertiesSubstancies count]==1,@"substance not defined");
    id substance = [propertiesSubstancies objectAtIndex:0];
    NSCAssert([substance isKindOfClass:[SpriteSubstance class]],@"wrong class for property");
    return (SpriteSubstance*)substance;
}
@end
