//
//  SampleDatasetViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleDatasourceViewController.h"
#import "SampleDataset.h"

#import "SampleDatasourceViewProtocol.h"

@interface SampleDatasourceViewController () {
    SampleDataset* dataset_;
}

@end

@implementation SampleDatasourceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    id<SampleDatasourceViewProtocol> mainView = [self mainView];
    [mainView setDatasource:self];
    

    dataset_ = [SampleDataset new];
}

- (id<SampleDatasourceViewProtocol>)mainView {
    return (id <SampleDatasourceViewProtocol>)self.view;
}

- (BOOL)prefersStatusBarHidden {
    return NO;
}

- (UIRectEdge)edgesForExtendedLayout {
    return UIRectEdgeNone;
}

#pragma mark - SamplesDatasourceProtocol

- (NSInteger)numberOfSections {
    return [[dataset_ allKeys] count];
}

- (NSString*)sectionNameAtIndex:(NSInteger)index {
    return [[dataset_ allKeys] objectAtIndex:index];
}

- (NSInteger)numberOfSamplesAtSection:(NSInteger)section {
    NSString* key = [[dataset_ allKeys] objectAtIndex:section];
    return [[dataset_ samplesForKey:key] count];
}

- (NSString*)sampleNameAtSection:(NSInteger)section andIndex:(NSInteger)index {
    
    NSString* keyName = [dataset_ keyNameAtIndex:section];
    Class <SampleProtocol> sample = [dataset_ sampleForKeyName:keyName andIndex:index];
    return [sample sampleName];
}

- (void)pushSampleAtSection:(NSInteger)section andIndex:(NSInteger)index {
    NSString* keyName = [dataset_ keyNameAtIndex:section];
    Class <SampleProtocol> sample = [dataset_ sampleForKeyName:keyName andIndex:index];
    UINavigationController* navC = self.navigationController;
    UIViewController* c = [sample newController];
    [navC pushViewController:c animated:YES];
    
    
}

- (void)addSample:(Class<SampleProtocol>)sample forKey:(NSString*)key {
    [dataset_ setSample:sample forKey:key];
}


+(NSString*)sampleName {
    NSAssert(NO,@"method is not implemented");
    return nil;
}

+(UIViewController*)newController {
    NSAssert(NO,@"method is not implemented");
    return nil;
}


@end
