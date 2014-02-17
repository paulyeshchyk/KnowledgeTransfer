//
//  UITransitionsHostViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 2/15/14.
//  Copyright (c) 2014 Pavel Yeshchyk. All rights reserved.
//

#import "UITransitionsHostViewController.h"
#import "UITransitionsGuestViewController.h"
#import "FromRightToLeftTransitioningDelegate.h"

@interface UITransitionsHostViewController ()

@end

@implementation UITransitionsHostViewController

+(NSString*)sampleName {
    return @"Sample: from right To left";
}

+(UIViewController*)newController {
    return [[UITransitionsHostViewController alloc] initWithNibName:@"UITransitionsHostViewController" bundle:[NSBundle mainBundle]];
}

- (IBAction)onPushClicked:(id)sender {

    id <UIViewControllerTransitioningDelegate> transitioningDelegate = [FromRightToLeftTransitioningDelegate new];
    
    UITransitionsGuestViewController *guest = [[UITransitionsGuestViewController alloc] initWithNibName:@"UITransitionsGuestViewController" bundle:[NSBundle mainBundle]];
    [guest setCloseBlock:^(UIViewController *sender){
        [sender dismissViewControllerAnimated:YES completion:^{
            
        }];
    }];
    guest.transitioningDelegate = transitioningDelegate;
    [self presentViewController:guest animated:YES completion:NULL];

}

@end
