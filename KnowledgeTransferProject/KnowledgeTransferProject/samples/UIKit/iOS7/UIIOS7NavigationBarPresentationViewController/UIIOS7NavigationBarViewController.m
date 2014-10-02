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
@property (nonatomic, weak)IBOutlet UISlider *slider;
@end

@implementation UIIOS7NavigationBarViewController

+ (NSString *)sampleName {
    return @"Navigationbar with extendUIRect";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edge = UIRectEdgeNone;
}

- (IBAction)sliderTapped:(UIGestureRecognizer *)g {
    UISlider* s = (UISlider*)g.view;
    CGPoint locationInView = [g locationInView: s];
    CGFloat percentage = locationInView.x / s.bounds.size.width;
    CGFloat delta = percentage * (s.maximumValue - s.minimumValue);
    CGFloat newValue = s.minimumValue + delta;
    [s setValue:newValue animated:YES];
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
