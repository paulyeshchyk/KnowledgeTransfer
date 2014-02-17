//
//  SpriteProperty.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/27/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    SpritePropertySubstance,
    SpritePropertyLocation
}SpritePropertyClass;


@protocol SpriteProperty <NSObject>
@required
@property (nonatomic, assign) SpritePropertyClass propertyclass;

@end
