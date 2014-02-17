//
//  SampleDatasourceView.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleDatasourceViewProtocol.h"

@interface SampleDatasourceView : UIView <SampleDatasourceViewProtocol, UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak)IBOutlet UITableView* tableView;
@end
