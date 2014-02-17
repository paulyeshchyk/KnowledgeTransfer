//
//  SampleQuartzCoreDrawBitmapViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleQuartzCoreDrawBitmapViewController.h"

@interface SampleQuartzCoreDrawBitmapViewController ()

@end

@implementation SampleQuartzCoreDrawBitmapViewController

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

- (NSString*)title {
    return [SampleQuartzCoreDrawBitmapViewController sampleName];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

#pragma mark - SampleProtocol
+(NSString*)sampleName {
    return @"Sample 2. Draw bitmap";
}

+(UIViewController*)newController {
    return [[SampleQuartzCoreDrawBitmapViewController alloc] initWithNibName:@"SampleQuartzCoreDrawBitmapViewController" bundle:[NSBundle mainBundle]];
}


@end
