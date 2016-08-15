//
//  NextPageTableViewCell.m
//  SunTransition
//
//  Created by 孙兆楠 on 16/8/13.
//  Copyright © 2016年 孙兆楠. All rights reserved.
//

#import "NextPageTableViewCell.h"

@implementation NextPageTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (IBAction)nextBtn:(id)sender {
    self.next();
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
