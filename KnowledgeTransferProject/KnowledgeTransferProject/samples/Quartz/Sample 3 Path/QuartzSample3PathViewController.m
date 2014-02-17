//
//  QuartzSample3PathViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample3PathViewController.h"
#import "SampleQuartzCoreDrawPathViewController.h"
#import "SampleQuartzCoreFillPathViewController.h"

@interface QuartzSample3PathViewController ()

@end

@implementation QuartzSample3PathViewController

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
    
    [self addSample:[SampleQuartzCoreDrawPathViewController class] forKey:@"Quartz simple"];
    [self addSample:[SampleQuartzCoreFillPathViewController class] forKey:@"Quartz simple"];
    
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString*)title {
    return [QuartzSample3PathViewController sampleName];
}

+ (NSString*)sampleName {
    return @"Sample 3. Path";
}

+(UIViewController*)newController {
    return [[QuartzSample3PathViewController alloc] initWithNibName:@"SampleDatasourceViewController" bundle:[NSBundle mainBundle]];
}


@end
