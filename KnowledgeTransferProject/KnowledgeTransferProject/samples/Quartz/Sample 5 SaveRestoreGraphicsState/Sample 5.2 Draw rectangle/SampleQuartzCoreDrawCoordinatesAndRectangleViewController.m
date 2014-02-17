//
//  SampleQuartzCoreDrawCoordinatesAndRectangleViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/24/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleQuartzCoreDrawCoordinatesAndRectangleViewController.h"

@interface SampleQuartzCoreDrawCoordinatesAndRectangleViewController ()

@end

@implementation SampleQuartzCoreDrawCoordinatesAndRectangleViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+(NSString*)sampleName {
    return @"Draw rectangle";
}

+(UIViewController*)newController {
    return [[SampleQuartzCoreDrawCoordinatesAndRectangleViewController alloc] initWithNibName:@"SampleQuartzCoreDrawCoordinatesAndRectangleViewController" bundle:[NSBundle mainBundle]];
}


@end
