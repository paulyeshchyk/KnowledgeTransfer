//
//  MainViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "MainViewController.h"

#import "QuartzSampleDatasourceViewController.h"
#import "UIKitSampleDatasourceViewController.h"
#import "DesignPatternsSampleDatasourceViewController.h"

@interface MainViewController () {
}

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addSample:[UIKitSampleDatasourceViewController class] forKey:@"Frameworks"];
    [self addSample:[QuartzSampleDatasourceViewController class] forKey:@"Frameworks"];
    [self addSample:[DesignPatternsSampleDatasourceViewController class] forKey:@"Frameworks"];
    
    
    
    // Do any additional setup after loading the view from its nib.
}

- (NSString*)title {
    return @"Samples";
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}


@end
