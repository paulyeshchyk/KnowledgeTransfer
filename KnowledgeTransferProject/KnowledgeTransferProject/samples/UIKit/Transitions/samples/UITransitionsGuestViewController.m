//
//  UITransitionsGuestViewController.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 2/15/14.
//  Copyright (c) 2014 Pavel Yeshchyk. All rights reserved.
//

#import "UITransitionsGuestViewController.h"

@interface UITransitionsGuestViewController ()

@end

@implementation UITransitionsGuestViewController

- (IBAction)onCloseTapped:(id)sender {
    if (self.closeBlock){
        self.closeBlock(self);
    }
}

@end
