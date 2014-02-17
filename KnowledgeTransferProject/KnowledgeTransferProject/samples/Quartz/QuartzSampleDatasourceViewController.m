//
//  QuartzSampleDatasourceViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSampleDatasourceViewController.h"
#import "SampleQuartzCoreDrawRectanglesViewController.h"
#import "SampleQuartzCoreDrawBitmapViewController.h"
#import "QuartzSample3PathViewController.h"
#import "QuartzSample4TransformationsViewController.h"
#import "QuartzSampleRestoreGraphicsState.h"
#import "QuartzSampleSpritesViewController.h"


@interface QuartzSampleDatasourceViewController ()

@end

@implementation QuartzSampleDatasourceViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addSample:[SampleQuartzCoreDrawRectanglesViewController class] forKey:@"Quartz simple"];
    [self addSample:[SampleQuartzCoreDrawBitmapViewController class] forKey:@"Quartz simple"];
    [self addSample:[QuartzSample3PathViewController class] forKey:@"Quartz simple"];
    [self addSample:[QuartzSample4TransformationsViewController class] forKey:@"Quartz simple"];
    [self addSample:[QuartzSampleRestoreGraphicsState class] forKey:@"Quartz simple"];
    [self addSample:[QuartzSampleSpritesViewController class] forKey:@"Quartz simple"];
    
    
    
    // Do any additional setup after loading the view from its nib.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (NSString*)title {
    return [QuartzSampleDatasourceViewController sampleName];
}

+ (NSString*)sampleName {
    return @"Quartz";
}

+ (UIViewController*)newController {
    return [[QuartzSampleDatasourceViewController alloc] initWithNibName:@"SampleDatasourceViewController" bundle:[NSBundle mainBundle]];
}
@end
