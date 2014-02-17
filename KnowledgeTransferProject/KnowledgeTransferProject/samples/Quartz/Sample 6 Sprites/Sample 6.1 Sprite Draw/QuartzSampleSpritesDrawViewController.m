//
//  QuartzSampleSpritesDrawViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/25/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSampleSpritesDrawViewController.h"

@interface QuartzSampleSpritesDrawViewController ()

@end

@implementation QuartzSampleSpritesDrawViewController

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
    return @"Sample 6.1 Draw sprite";
}

+(UIViewController*)newController {
    return [[QuartzSampleSpritesDrawViewController alloc] initWithNibName:@"QuartzSampleSpritesDrawViewController" bundle:[NSBundle mainBundle]];
}


@end
