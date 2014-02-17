//
//  SamplesDatasourceProtocol.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SamplesDatasourceProtocol <NSObject>
@required
- (NSInteger)numberOfSections;
- (NSString*)sectionNameAtIndex:(NSInteger)index;
- (NSInteger)numberOfSamplesAtSection:(NSInteger)section;
- (NSString*)sampleNameAtSection:(NSInteger)section andIndex:(NSInteger)index;
- (void)pushSampleAtSection:(NSInteger)section andIndex:(NSInteger)index;
@end
