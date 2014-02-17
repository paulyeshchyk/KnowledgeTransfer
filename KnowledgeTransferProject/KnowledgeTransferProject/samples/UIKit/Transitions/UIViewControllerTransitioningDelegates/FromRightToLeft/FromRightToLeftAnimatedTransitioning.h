//
//  FromRightToLeftAnimatedTransitioning.h
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 2/15/14.
//  Copyright (c) 2014 Pavel Yeshchyk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FromRightToLeftAnimatedTransitioning : NSObject <UIViewControllerAnimatedTransitioning>
@property (nonatomic, assign)BOOL reverse;
@end
