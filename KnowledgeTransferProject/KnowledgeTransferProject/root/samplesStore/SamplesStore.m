//
//  SampleStore.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SamplesStore.h"
#import "SampleDataset.h"

static SamplesStore * instance_;

@interface SamplesStore(){
    SampleDataset* dataset_;

}

@end

@implementation SamplesStore

+ (SamplesStore*)instance {
    if (instance_ == nil){
        instance_ = [SamplesStore new];
    }
    return instance_;
}


- (id)init {
    self = [super init];
    if (self != nil){
        dataset_ = [SampleDataset new];
    }
    return self;
}


- (void)setSample:(Class<SampleProtocol>)sample forKey:(NSString*)key {
    [dataset_ setSample:sample forKey:key];

}

@end
