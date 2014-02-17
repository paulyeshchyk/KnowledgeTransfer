//
//  UIIOS7NavigationBarViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 2/15/14.
//  Copyright (c) 2014 Pavel Yeshchyk. All rights reserved.
//

#import "UIIOS7NavigationBarViewController.h"

@interface UIIOS7NavigationBarViewController ()
@property (nonatomic, assign)UIRectEdge edge;
@end

@implementation UIIOS7NavigationBarViewController

+ (NSString *)sampleName {
    return @"Navigationbar with extendUIRect";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edge = UIRectEdgeNone;
}

+(UIViewController*)newController {
    return [[UIIOS7NavigationBarViewController alloc] initWithNibName:@"UIIOS7NavigationBarViewController" bundle:[NSBundle mainBundle]];
}

- (IBAction)onSwitcherValueChanged:(id)sender {
    UISwitch *switcher = (UISwitch *)sender;
    NSInteger tag = [switcher tag];
    if (switcher.on) {
        self.edge |= 1 << tag;
    } else {
        self.edge ^= 1 << tag;
    }
}

- (void)setEdge:(UIRectEdge)edge {
    _edge = edge;
    [self setEdgesForExtendedLayout:self.edge];
}

@end
