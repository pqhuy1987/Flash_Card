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
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setImage :(NSString *)image withFunction:(NSString *)function withDecription:(NSString *)decription{
    self.funcIcon.image = [UIImage imageNamed:image];
    self.funcIcon.contentMode = UIViewContentModeScaleAspectFit;
    self.functionLabel.text = function;
    self.decriptionLabel.text = decription;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    if (!(self.decriptionLabel.text.length > 0)){
        self.functionLabel.center = CGPointMake(self.functionLabel.center.x, self.funcIcon.center.y);
    }
}


@end
