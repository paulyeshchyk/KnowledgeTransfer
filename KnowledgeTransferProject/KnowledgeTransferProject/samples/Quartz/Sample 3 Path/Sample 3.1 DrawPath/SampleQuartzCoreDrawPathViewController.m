//
//  SampleQuartzCoreCGPath.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "SampleQuartzCoreDrawPathViewController.h"

@interface SampleQuartzCoreDrawPathViewController ()

@end

@implementation SampleQuartzCoreDrawPathViewController

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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}


+ (NSString*)sampleName{
    return @"Sample 3.1 Draw Path";
}

- (NSString*)title {
    return [SampleQuartzCoreDrawPathViewController sampleName];
}

+(UIViewController*)newController {
    return [[SampleQuartzCoreDrawPathViewController alloc] initWithNibName:@"SampleQuartzCoreDrawPathViewController" bundle:[NSBundle mainBundle]];
}
@end
