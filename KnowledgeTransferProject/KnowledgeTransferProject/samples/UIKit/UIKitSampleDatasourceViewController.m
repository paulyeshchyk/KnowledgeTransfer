//
//  UIKitSampleDatasourceViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "UIKitSampleDatasourceViewController.h"
#import "UICollectionViewCustomLayoutViewController.h"
#import "UICollectionViewCircleLayoutViewController.h"
#import "UIIOS7NavigationBarPresentationViewController.h"
#import "UITransitionsViewController.h"

@interface UIKitSampleDatasourceViewController ()

@end

@implementation UIKitSampleDatasourceViewController

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
    [self addSample:[UICollectionViewCustomLayoutViewController class] forKey:@"CollectionViewSample"];
    [self addSample:[UICollectionViewCircleLayoutViewController class] forKey:@"CollectionViewSample"];
    [self addSample:[UIIOS7NavigationBarPresentationViewController class] forKey:@"iOS7NavigationBar"];
    [self addSample:[UITransitionsViewController class] forKey:@"Transitions"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSString*)title {
    return [UIKitSampleDatasourceViewController sampleName];
}

+ (NSString*)sampleName {
    return @"UIKit";
}

+ (UIViewController*)newController {
    return [[UIKitSampleDatasourceViewController alloc] initWithNibName:@"SampleDatasourceViewController" bundle:[NSBundle mainBundle]];
}

@end
