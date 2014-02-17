//
//  SpriteSubstance.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SpriteSubstance.h"

@implementation SpriteSubstance
@synthesize width;
@synthesize depth;
@synthesize height;
@synthesize density;
@synthesize propertyclass;

- (id)init {
    self = [super init];
    if (self){
        self.propertyclass = SpritePropertySubstance;
    }
    return self;
    
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self){
        self.propertyclass = SpritePropertySubstance;
    }
    return self;
}



- (id)copyWithZone:(NSZone *)zone {
    SpriteSubstance* result = [[SpriteSubstance allocWithZone:zone]init];
    if (result != nil){
        result.width = self.width;
        result.depth = self.depth;
        result.height = self.height;
        result.density = self.density;
        
    }
    return result;
}


+(SpriteSubstance*)substanceWithWidth:(CGFloat)width height:(CGFloat)height depth:(CGFloat)depth density:(CGFloat) density{
    SpriteSubstance* result = [[SpriteSubstance alloc] init];
    result.width = width;
    result.depth = depth;
    result.height = height;
    result.density = density;
    return result;
}

- (BOOL)isEqual:(id)spriteDimension {
    BOOL boolResult = YES;
    boolResult &= (self.width == ((SpriteSubstance*)spriteDimension).width);
    boolResult &= (self.height == ((SpriteSubstance*)spriteDimension).height);
    boolResult &= (self.depth == ((SpriteSubstance*)spriteDimension).depth);
    boolResult &= (self.density == ((SpriteSubstance*)spriteDimension).density);
    return boolResult;
}

- (NSUInteger)hash {
    NSUInteger result = 0;
    NSUInteger multiplier = 256;
    result += self.width * multiplier;multiplier *= 256;
    result += self.height * multiplier;multiplier *= 256;
    result += self.depth * multiplier;multiplier *= 256;
    result += self.density * multiplier;
    return result;
}


@end
