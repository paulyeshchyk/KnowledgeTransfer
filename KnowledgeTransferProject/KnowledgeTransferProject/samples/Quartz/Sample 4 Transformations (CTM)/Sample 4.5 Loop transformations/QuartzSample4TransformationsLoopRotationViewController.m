//
//  QuartzSample4TransformationsLoopRotationViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/24/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample4TransformationsLoopRotationViewController.h"

@interface QuartzSample4TransformationsLoopRotationViewController ()

@end

@implementation QuartzSample4TransformationsLoopRotationViewController

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
    return @"Loop transformations";
}

+(UIViewController*)newController {
    return [[QuartzSample4TransformationsLoopRotationViewController alloc] initWithNibName:@"QuartzSample4TransformationsLoopRotationViewController" bundle:[NSBundle mainBundle]];
}


@end
