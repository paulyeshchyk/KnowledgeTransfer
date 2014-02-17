//
//  QuartzSampleSpritesViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/25/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSampleSpritesViewController.h"
#import "QuartzSampleSpritesDrawViewController.h"

@interface QuartzSampleSpritesViewController ()

@end

@implementation QuartzSampleSpritesViewController

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
    [self addSample:[QuartzSampleSpritesDrawViewController class] forKey:@"Quartz simple"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (NSString*)sampleName {
    return @"Sample 6. Sprites";
}

+(UIViewController*)newController {
    return [[QuartzSampleSpritesViewController alloc] initWithNibName:@"SampleDatasourceViewController" bundle:[NSBundle mainBundle]];
}

@end
