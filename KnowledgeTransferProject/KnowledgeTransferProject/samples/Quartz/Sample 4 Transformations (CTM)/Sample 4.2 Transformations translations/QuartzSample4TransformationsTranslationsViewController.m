//
//  QuartzSample4TransformationsTranslationsViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample4TransformationsTranslationsViewController.h"

@interface QuartzSample4TransformationsTranslationsViewController ()

@end

@implementation QuartzSample4TransformationsTranslationsViewController

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

- (NSString*)title {
    return [QuartzSample4TransformationsTranslationsViewController sampleName];
}

+(NSString*)sampleName {
    return @"Transformations.Translations";
}

+(UIViewController*)newController {
    return [[QuartzSample4TransformationsTranslationsViewController alloc] initWithNibName:@"QuartzSample4TransformationsTranslationsViewController" bundle:[NSBundle mainBundle]];
}

@end
