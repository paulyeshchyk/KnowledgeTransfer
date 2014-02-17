//
//  QuartzSampleSpritesDrawView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/25/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSampleSpritesDrawView.h"
#import "VectorSprite.h"
#import "Space.h"
#import "SpriteDrawer.h"
#import "SpriteSubstance.h"
#import "SpriteLocation.h"

static NSString* const  kSprite1Key = @"kSprite1Key";
static NSString* const  kSprite2Key = @"kSprite2Key";

@interface QuartzSampleSpritesDrawView() {
    
    NSTimer* gameTimer_;
}
@end

@implementation QuartzSampleSpritesDrawView

#define kVectorArtCount 26
static CGFloat kVectorArt[] = {
    15.10044611,26.70202637,
    9.74888361,12.19030762,
    20.47153986,12.19030762,
    15.10044611,26.70202637,
    12.87388361,30.58874512,
    17.34653986,30.58874512,
    28.45982111,1.42858887,
    24.35825861,1.42858887,
    21.70200861,8.90905762,
    8.55747736,8.90905762,
    5.90122736,1.42858887,
    1.74107111,1.42858887,
    12.87388361,30.58874512


};


-(void) onLoop {
//    [self updateObjectOnPath];
//    [_plane setNeedsDisplay];

    
//    for(Sprite* sprite in spriteArray_) {
//        [sprite moveAnywhere];
//    }
//    
    [self setNeedsDisplay];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self){
        
        [[Space instance] removeAllSprites];
        
        gameTimer_ = [NSTimer scheduledTimerWithTimeInterval: 1.0/60.0f target:self selector:@selector(onLoop) userInfo:nil repeats:YES];
        
        
        VectorSprite* sprite1;
        sprite1 = [VectorSprite spriteWithPoints:kVectorArt pointsCount:kVectorArtCount];
        sprite1.strokeColor = [UIColor redColor];
        sprite1.fillColor = [UIColor greenColor];
        sprite1.tag = kSprite1Key;
        
        SpriteSubstance* sprite1Substance = [SpriteSubstance substanceWithWidth:20 height:20 depth:20 density:20];
        [sprite1 addProperty:sprite1Substance];
        
        SpriteLocation* spriteLocation1 = [SpriteLocation locationWithX:000.0 y:0.0 z:0.0 t:0.0];
        [sprite1 addProperty:spriteLocation1];

        
        [[Space instance] setSprite:sprite1 forKey:kSprite1Key];
        
        
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [[Space instance] enumerateSpritesWithBlock:^(Space* space, Sprite *sprite) {
//        SpriteLocation* spriteLocation = [space locationForSprite:sprite];
        [[SpriteDrawer instance] drawSprite:sprite withinSpace:space andContext:context];

//        SpriteLocation* spriteLocation = [space locationForSprite:sprite];
//        spriteLocation.x += (random() % 2);
//        spriteLocation.y += (random() % 2);
//        [space moveSprite:sprite toLocation:spriteLocation];
        //        [sprite drawInContext:context];
    }];
    

}
//
//- (NSArray*)availablePointsForSprite:(Sprite*)sprite{
//    
//    NSMutableArray* resultArray = [NSMutableArray new];
//    
//    NSMutableDictionary* allPoints = [NSMutableDictionary new];
//    [allPoints setObject:@(YES) forKey:[NSValue valueWithCGPoint:CGPointMake(sprite.position.x+1, sprite.position.y+1)]];
//    [allPoints setObject:@(YES) forKey:[NSValue valueWithCGPoint:CGPointMake(sprite.position.x+0, sprite.position.y+1)]];
//    [allPoints setObject:@(YES) forKey:[NSValue valueWithCGPoint:CGPointMake(sprite.position.x-1, sprite.position.y+1)]];
//
//    [allPoints setObject:@(YES) forKey:[NSValue valueWithCGPoint:CGPointMake(sprite.position.x+1, sprite.position.y+0)]];
//    [allPoints setObject:@(YES) forKey:[NSValue valueWithCGPoint:CGPointMake(sprite.position.x+0, sprite.position.y+0)]];
//    [allPoints setObject:@(YES) forKey:[NSValue valueWithCGPoint:CGPointMake(sprite.position.x-1, sprite.position.y+0)]];
//
//    [allPoints setObject:@(YES) forKey:[NSValue valueWithCGPoint:CGPointMake(sprite.position.x+1, sprite.position.y-1)]];
//    [allPoints setObject:@(YES) forKey:[NSValue valueWithCGPoint:CGPointMake(sprite.position.x+0, sprite.position.y-1)]];
//    [allPoints setObject:@(YES) forKey:[NSValue valueWithCGPoint:CGPointMake(sprite.position.x-1, sprite.position.y-1)]];
//    
////    for(Sprite* neighbour in spriteArray_){
////        if (sprite.tag != neighbour.tag) {
////            
////            for(NSValue* availablePointValue in [allPoints allKeys]) {
////                
////                CGPoint point = [availablePointValue CGPointValue];
////                BOOL resultBOOL = [[allPoints objectForKey:availablePointValue] boolValue];
////                if (resultBOOL) {
////                    CGRect rect1 = CGRectMake(neighbour.position.x,neighbour.position.y,neighbour.size.width,neighbour.size.height);
////                    CGRect rect2 = CGRectMake(point.x,point.y,sprite.size.width,sprite.size.height);
////                    resultBOOL = !CGRectIntersectsRect(rect2,rect1);
////
////                    CGRect rect3 = self.bounds;
////                    rect3.origin.x = sprite.size.width;
////                    rect3.size.width -= 2*sprite.size.width;
////                    rect3.origin.y = sprite.size.height;
////                    rect3.size.height -= 2*sprite.size.height;
////                    resultBOOL &= CGRectIntersectsRect(rect2,rect3);
////                }
////                [allPoints setObject:[NSNumber numberWithBool:resultBOOL] forKey:availablePointValue];
////            }
////            
////        }
////    }
//    
//    for(NSValue* availablePointValue in [allPoints allKeys]) {
//        BOOL resultBOOL = [[allPoints objectForKey:availablePointValue] boolValue];
//        if (resultBOOL){
//            [resultArray addObject:availablePointValue];
//        }
//    
//    }
//    
//    
//    return resultArray;
//}

@end
