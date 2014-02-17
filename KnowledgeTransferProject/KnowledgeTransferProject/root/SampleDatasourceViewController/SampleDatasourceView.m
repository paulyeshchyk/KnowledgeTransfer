//
//  MainView.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleDatasourceView.h"
#import "MainTableViewCell.h"

static NSString* const MainViewCellIdentifier = @"MainViewCellIdentifier";

@implementation SampleDatasourceView

@synthesize tableView;
@synthesize datasource;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    [self.tableView registerNib:[UINib nibWithNibName:@"MainTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:MainViewCellIdentifier];
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [datasource numberOfSamplesAtSection:section];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [datasource numberOfSections];
}

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [datasource sectionNameAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:MainViewCellIdentifier];
    if (cell != nil) {
        cell.textLabel.text = [datasource sampleNameAtSection:indexPath.section andIndex:indexPath.row];
    }
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)p_tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [p_tableView deselectRowAtIndexPath:indexPath animated:NO];
    [datasource pushSampleAtSection:indexPath.section andIndex:indexPath.row];
}


#pragma mark - MainViewProtocol

- (void)reloadData {
    [self.tableView reloadData];
}

@end
