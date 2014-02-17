//
//  UITransitionsViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 2/15/14.
//  Copyright (c) 2014 Pavel Yeshchyk. All rights reserved.
//

#import "UITransitionsViewController.h"
#import "UITransitionsHostViewController.h"

@interface UITransitionsViewController ()

@end

@implementation UITransitionsViewController

+(NSString*)sampleName {
    return @"transitions";
}

+(UIViewController*)newController {
    return [[UITransitionsViewController alloc] initWithNibName:@"SampleDatasourceViewController" bundle:[NSBundle mainBundle]];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addSample:[UITransitionsHostViewController class] forKey:@"push"];
}


@end
