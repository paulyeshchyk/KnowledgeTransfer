//
//  UIIOS7NavigationBarPresentationViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 2/15/14.
//  Copyright (c) 2014 Pavel Yeshchyk. All rights reserved.
//

#import "UIIOS7NavigationBarPresentationViewController.h"
#import "UIIOS7NavigationBarViewController.h"

@interface UIIOS7NavigationBarPresentationViewController ()

@end

@implementation UIIOS7NavigationBarPresentationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addSample:[UIIOS7NavigationBarViewController class] forKey:@"NavigationBar"];
}

+ (NSString*)sampleName {
    return @"Presentation";
}

+ (UIViewController*)newController {
    return [[UIIOS7NavigationBarPresentationViewController alloc] initWithNibName:@"SampleDatasourceViewController" bundle:[NSBundle mainBundle]];
}

@end
