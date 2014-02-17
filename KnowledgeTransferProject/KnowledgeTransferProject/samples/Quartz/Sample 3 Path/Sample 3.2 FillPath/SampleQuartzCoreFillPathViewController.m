//
//  SampleQuartzCoreFillPathViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleQuartzCoreFillPathViewController.h"

@interface SampleQuartzCoreFillPathViewController ()

@end

@implementation SampleQuartzCoreFillPathViewController

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
    return @"Sample 3.2 Fill Path";
}

+(UIViewController*)newController {
    return [[SampleQuartzCoreFillPathViewController alloc] initWithNibName:@"SampleQuartzCoreFillPathViewController" bundle:[NSBundle mainBundle]];
}

@end
