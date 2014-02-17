//
//  SampleDatasetViewController.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"
#import "SamplesDatasourceProtocol.h"

@interface SampleDatasourceViewController : UIViewController <SamplesDatasourceProtocol, SampleProtocol>
- (void)addSample:(Class<SampleProtocol>)sample forKey:(NSString*)key;
@end
