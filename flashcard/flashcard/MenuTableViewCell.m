//
//  MenuTableViewCell.m
//  flashcard
//
//  Created by TUNG on 8/16/16.
//  Copyright © 2016 pqhuy1987. All rights reserved.
//

#import "MenuTableViewCell.h"

@implementation MenuTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setImage :(NSString *)image withFunction:(NSString *)function withDecription:(NSString *)decription{
    self.funcIcon.image = [UIImage imageNamed:image];
    self.funcIcon.contentMode = UIViewContentModeScaleAspectFit;
    self.functionLabel.text = function;
    self.decriptionLabel.text = decription;
}


@end
