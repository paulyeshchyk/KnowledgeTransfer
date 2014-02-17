//
//  QuartzSample4Transformations.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample4TransformationsDrawUIImageViewController.h"

@interface QuartzSample4TransformationsDrawUIImageViewController ()

@end

@implementation QuartzSample4TransformationsDrawUIImageViewController

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
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (NSString*)title {
    return [QuartzSample4TransformationsDrawUIImageViewController sampleName];
}

+(NSString*)sampleName {
    return @"Draw Image";
}

+(UIViewController*)newController {
    return [[QuartzSample4TransformationsDrawUIImageViewController alloc] initWithNibName:@"QuartzSample4TransformationsDrawUIImageViewController" bundle:[NSBundle mainBundle]];
}
@end
