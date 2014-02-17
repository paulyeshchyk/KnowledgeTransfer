//
//  SampleDatasource.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleDataset.h"
@interface SampleDataset(){
    NSMutableDictionary* dictionary_;
}
@end

@implementation SampleDataset

- (id)init {
    
    self = [super init];
    if (self){
        dictionary_ = [NSMutableDictionary new];
    }
    
    return self;
}

- (NSArray*)allKeys {
    return [dictionary_ allKeys];
}

- (NSArray*)samplesForKey:(NSString*)key {
    return [dictionary_ objectForKey:key];
}

- (NSString*)keyNameAtIndex:(NSInteger)index {
    
    return [[dictionary_ allKeys] objectAtIndex:index];
}

- (Class<SampleProtocol>)sampleForKeyName:(NSString*)keyName andIndex:(NSInteger)index {
    NSArray* samples = [dictionary_ objectForKey:keyName];
    
    return [samples objectAtIndex:index];
}

- (void)setSample:(Class<SampleProtocol>)sample forKey:(NSString*)key {
    
    NSMutableArray* mutableArray = [NSMutableArray new];

    NSArray* array = [dictionary_ objectForKey:key];
    if (array != nil) {
        [mutableArray addObjectsFromArray:array];
    }
    
    [mutableArray addObject:sample];
    [dictionary_ setObject:mutableArray forKey:key];
    
}

@end
