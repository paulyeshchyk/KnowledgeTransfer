//
//  MainViewProtocol.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//


#import "SamplesDatasourceProtocol.h"

@protocol SampleDatasourceViewProtocol
@required
- (void)reloadData;
@property (nonatomic, weak)id<SamplesDatasourceProtocol>datasource;
@end
