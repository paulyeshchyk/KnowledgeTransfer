//
//  SpriteLocation.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SpriteLocation.h"

@implementation SpriteLocation
@synthesize x;
@synthesize y;
@synthesize z;
@synthesize t;

@synthesize propertyclass;

- (id)init {
    self = [super init];
    if (self){
        self.propertyclass = SpritePropertyLocation;
    }
    return self;
    
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self){
        self.propertyclass = SpritePropertyLocation;
    }
    return self;
}



- (id)copyWithZone:(NSZone *)zone {
    SpriteLocation* copySprite = [[SpriteLocation allocWithZone:zone]init];
    if (copySprite != nil){
        copySprite.x = self.x;
        copySprite.y = self.y;
        copySprite.z = self.z;
        copySprite.t = self.t;
        
    }
    return copySprite;
}


+(SpriteLocation*)locationWithX:(CGFloat)x y:(CGFloat)y z:(CGFloat)z t:(CGFloat)t {
    SpriteLocation* result = [[SpriteLocation alloc] init];
    result.x = x;
    result.y = y;
    result.z = z;
    result.t = t;
    return result;
}

- (BOOL)isEqual:(id)spriteLocation {
    BOOL boolResult = YES;
    boolResult &= (self.x == ((SpriteLocation*)spriteLocation).x);
    boolResult &= (self.y == ((SpriteLocation*)spriteLocation).y);
    boolResult &= (self.z == ((SpriteLocation*)spriteLocation).z);
    boolResult &= (self.t == ((SpriteLocation*)spriteLocation).t);
    return boolResult;
}

- (NSUInteger)hash {
    NSUInteger result = 0;
    NSUInteger multiplier = 256;
    result += self.x * multiplier;multiplier *= 256;
    result += self.y * multiplier;multiplier *= 256;
    result += self.z * multiplier;multiplier *= 256;
    result += self.t * multiplier;
    return result;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
}

@end
