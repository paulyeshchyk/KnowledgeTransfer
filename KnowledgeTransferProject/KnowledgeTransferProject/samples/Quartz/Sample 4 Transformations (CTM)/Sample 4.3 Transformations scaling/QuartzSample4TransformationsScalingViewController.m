//
//  QuartzSample4TransformationsScalingViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample4TransformationsScalingViewController.h"

@interface QuartzSample4TransformationsScalingViewController ()

@end

@implementation QuartzSample4TransformationsScalingViewController

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
    return @"Transformations.Scaling";
}

- (NSString*)title {
    return [QuartzSample4TransformationsScalingViewController sampleName];
}

+(UIViewController*)newController {
    return [[QuartzSample4TransformationsScalingViewController alloc] initWithNibName:@"QuartzSample4TransformationsScalingViewController" bundle:[NSBundle mainBundle]];
}

@end
