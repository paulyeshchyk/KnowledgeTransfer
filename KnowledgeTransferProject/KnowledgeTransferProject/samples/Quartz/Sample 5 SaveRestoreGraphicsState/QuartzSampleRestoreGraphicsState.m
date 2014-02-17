//
//  QuartzSampleRestoreGraphicsState.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/24/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSampleRestoreGraphicsState.h"
#import "SampleQuartzCoreDrawCoordinatesViewController.h"
#import "SampleQuartzCoreDrawCoordinatesAndRectangleViewController.h"

@interface QuartzSampleRestoreGraphicsState ()

@end

@implementation QuartzSampleRestoreGraphicsState

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
	// Do any additional setup after loading the view.
    [self addSample:[SampleQuartzCoreDrawCoordinatesViewController class] forKey:@"Quartz simple"];
    [self addSample:[SampleQuartzCoreDrawCoordinatesAndRectangleViewController class] forKey:@"Quartz simple"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (NSString*)sampleName {
    return @"Sample 5. Restore graphics state";
}

+(UIViewController*)newController {
    return [[QuartzSampleRestoreGraphicsState alloc] initWithNibName:@"SampleDatasourceViewController" bundle:[NSBundle mainBundle]];
}


@end
