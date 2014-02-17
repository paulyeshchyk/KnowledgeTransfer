//
//  MainTableViewCell.m
//  KnowledgeTransferProject
//
//  Created by Pavel Yeshchyk on 4/22/13.
//  Copyright (c) 2013 Pavel Yeshchyk. All rights reserved.
//

#import "MainTableViewCell.h"

@interface MainTableViewCell(){
}
@property (nonatomic, weak) IBOutlet UILabel* simpleTextLabel;
@end

@implementation MainTableViewCell
@synthesize simpleTextLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (UILabel*)textLabel {
    return simpleTextLabel;
}

@end
