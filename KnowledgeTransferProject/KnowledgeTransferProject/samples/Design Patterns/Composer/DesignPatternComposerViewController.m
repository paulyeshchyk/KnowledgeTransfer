//
//  DesignPatternComposerViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 5/7/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "DesignPatternComposerViewController.h"

@interface DesignPatternComposerViewController ()

@end

@implementation DesignPatternComposerViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+(NSString*)sampleName {
    return @"Composer";
}

- (UIRectEdge) edgesForExtendedLayout {
    return UIRectEdgeNone;
}

+(UIViewController*)newController {
    return [[DesignPatternComposerViewController alloc] initWithNibName:@"DesignPatternComposerViewController" bundle:[NSBundle mainBundle]];
}
@end
