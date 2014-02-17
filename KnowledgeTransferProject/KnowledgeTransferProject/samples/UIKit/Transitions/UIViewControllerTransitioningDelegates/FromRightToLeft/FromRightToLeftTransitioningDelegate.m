//
//  FromRightToLeftTransitioningDelegate.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 2/15/14.
//  Copyright (c) 2014 Pavel Yeshchyk. All rights reserved.
//

#import "FromRightToLeftTransitioningDelegate.h"
#import "FromRightToLeftAnimatedTransitioning.h"

@implementation FromRightToLeftTransitioningDelegate

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    FromRightToLeftAnimatedTransitioning* transitioning = [FromRightToLeftAnimatedTransitioning new];
    return transitioning;
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    FromRightToLeftAnimatedTransitioning* transitioning = [FromRightToLeftAnimatedTransitioning new];
    [transitioning setReverse:YES];
    return transitioning;
}

@end
