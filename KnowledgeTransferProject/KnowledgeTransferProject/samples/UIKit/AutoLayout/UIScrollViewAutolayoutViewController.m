//
//  UIScrollViewAutolayoutViewController.m
//  KnowledgeTransferProject
//
//  Created by Paul on 7/13/14.
//  Copyright (c) 2014 Pavel Yeshchyk. All rights reserved.
//

#import "UIScrollViewAutolayoutViewController.h"

@interface UIScrollViewAutolayoutViewController ()

@property (nonatomic, weak)IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong)NSArray *localConstraints;

@end

@implementation UIScrollViewAutolayoutViewController

+(NSString*)sampleName {
    
    return @"ScrollView";
}

+(UIViewController*)newController {
    return [[UIScrollViewAutolayoutViewController alloc] initWithNibName:@"UIScrollViewAutolayoutViewController"  bundle:[NSBundle mainBundle]];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *localConstraints = [[NSMutableArray alloc] init];

    UIView *previousView = nil;
    for (int i=0;i<40;i++) {
    
        UIView *newView = [self createSubviewWithColor:[UIColor greenColor]];
        [newView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.scrollView addSubview:newView];

        NSDictionary *bindingNewView = NSDictionaryOfVariableBindings(newView);
        [localConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[newView(100)]" options:0 metrics: 0 views:bindingNewView]];

        if (!previousView){
            
            [localConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[newView(100)]" options:0 metrics: 0 views:bindingNewView]];
        } else {
            
            NSDictionary *bindingPreviousView = NSDictionaryOfVariableBindings(newView,previousView);
            [localConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[previousView]-2-[newView(100)]" options:0 metrics: 0 views:bindingPreviousView]];
        }

        previousView = newView;
    }
    
    NSDictionary *bindingLastView = NSDictionaryOfVariableBindings(previousView);
    [localConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[previousView]|" options:0 metrics: 0 views:bindingLastView]];

    self.localConstraints = [localConstraints copy];
    [self.scrollView addConstraints:self.localConstraints];
    
}

- (UIView *)createSubviewWithColor:(UIColor *)color {
    UIView *result = [[UIView alloc] init];
    [result setBackgroundColor:color];
    return result;
}


@end
