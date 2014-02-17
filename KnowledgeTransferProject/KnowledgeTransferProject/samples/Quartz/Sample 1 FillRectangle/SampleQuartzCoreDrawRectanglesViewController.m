//
//  SampleQuartzCoreDrawRectanglesViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleQuartzCoreDrawRectanglesViewController.h"

@interface SampleQuartzCoreDrawRectanglesViewController ()

@end

@implementation SampleQuartzCoreDrawRectanglesViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}


+ (NSString*)sampleName{
    return @"Sample 1. Fill Rectangle";
}

- (NSString*)title {
    return [SampleQuartzCoreDrawRectanglesViewController sampleName];
}

+(UIViewController*)newController {
    return [[SampleQuartzCoreDrawRectanglesViewController alloc] initWithNibName:@"SampleQuartzCoreDrawRectanglesViewController" bundle:[NSBundle mainBundle]];
}

@end
