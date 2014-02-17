//
//  QuartzSample4TransformationsViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample4TransformationsViewController.h"
#import "QuartzSample4TransformationsDrawUIImageViewController.h"
#import "QuartzSample4TransformationsTranslationsViewController.h"
#import "QuartzSample4TransformationsScalingViewController.h"
#import "QuartzSample4TransformationsRotationViewController.h"
#import "QuartzSample4TransformationsLoopRotationViewController.h"


@interface QuartzSample4TransformationsViewController ()

@end

@implementation QuartzSample4TransformationsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addSample:[QuartzSample4TransformationsDrawUIImageViewController class] forKey:@"Quartz simple"];
    [self addSample:[QuartzSample4TransformationsTranslationsViewController class] forKey:@"Quartz simple"];
    [self addSample:[QuartzSample4TransformationsScalingViewController class] forKey:@"Quartz simple"];
    [self addSample:[QuartzSample4TransformationsRotationViewController class] forKey:@"Quartz simple"];
    [self addSample:[QuartzSample4TransformationsLoopRotationViewController class] forKey:@"Quartz simple"];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (NSString*)title {
    return [QuartzSample4TransformationsViewController sampleName];
}

+ (NSString*)sampleName {
    return @"Sample 4. Transformations";
}

+ (UIViewController*)newController {
    return [[QuartzSample4TransformationsViewController alloc] initWithNibName:@"SampleDatasourceViewController" bundle:[NSBundle mainBundle]];
}


@end
