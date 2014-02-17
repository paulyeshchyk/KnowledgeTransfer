//
//  SampleStore.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SampleProtocol.h"

@interface SamplesStore : NSObject
+ (SamplesStore*)instance;
- (void)setSample:(Class<SampleProtocol>)sample forKey:(NSString*)key;
@end
