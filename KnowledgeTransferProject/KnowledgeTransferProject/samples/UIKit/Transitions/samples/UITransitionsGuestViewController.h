//
//  UITransitionsGuestViewController.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 2/15/14.
//  Copyright (c) 2014 Pavel Yeshchyk. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^OnCloseBlock)(UIViewController *sender);

@interface UITransitionsGuestViewController : UIViewController

@property (nonatomic, copy)OnCloseBlock closeBlock;

- (IBAction)onCloseTapped:(id)sender;

@end
