//
//  SampleDatasource.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SampleProtocol.h"

@interface SampleDataset : NSObject
- (NSArray*)allKeys;
- (NSArray*)samplesForKey:(NSString*)key;
- (NSString*)keyNameAtIndex:(NSInteger)index;
- (Class<SampleProtocol>)sampleForKeyName:(NSString*)keyName andIndex:(NSInteger)index;
- (void)setSample:(Class<SampleProtocol>)sample forKey:(NSString*)key;

@end
