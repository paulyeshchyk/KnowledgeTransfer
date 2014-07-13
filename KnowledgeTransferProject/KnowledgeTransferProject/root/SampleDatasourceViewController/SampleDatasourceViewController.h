//
//  SampleDatasetViewController.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "KTViewController.h"
#import "SampleProtocol.h"
#import "SamplesDatasourceProtocol.h"

@interface SampleDatasourceViewController : KTViewController <SamplesDatasourceProtocol, SampleProtocol>
- (void)addSample:(Class<SampleProtocol>)sample forKey:(NSString*)key;
@end
