//
//  DesignPatternsSampleDatasourceViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 5/7/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "DesignPatternsSampleDatasourceViewController.h"
#import "DesignPatternComposerViewController.h"
@interface DesignPatternsSampleDatasourceViewController ()

@end

@implementation DesignPatternsSampleDatasourceViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addSample:[DesignPatternComposerViewController class] forKey:@"Composer"];
}

+ (NSString*)sampleName {
    return @"Design Patterns";
}

+ (UIViewController*)newController {
    return [[DesignPatternsSampleDatasourceViewController alloc] initWithNibName:@"SampleDatasourceViewController" bundle:[NSBundle mainBundle]];
}

@end
