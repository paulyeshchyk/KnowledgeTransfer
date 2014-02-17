//
//  QuartzSample4TransformationsRotationViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/23/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "QuartzSample4TransformationsRotationViewController.h"

@interface QuartzSample4TransformationsRotationViewController ()

@end

@implementation QuartzSample4TransformationsRotationViewController

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

- (NSString*)title {
    return [QuartzSample4TransformationsRotationViewController sampleName];
}

+(NSString*)sampleName {
    return @"Translations.Rotation";
}

+(UIViewController*)newController {
    return [[QuartzSample4TransformationsRotationViewController alloc] initWithNibName:@"QuartzSample4TransformationsRotationViewController" bundle:[NSBundle mainBundle]];
}


@end
