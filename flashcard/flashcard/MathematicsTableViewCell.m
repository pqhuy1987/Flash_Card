//
//  MathematicsTableViewCell.m
//  flashcard
//
//  Created by TUNG on 8/22/16.
//  Copyright © 2016 pqhuy1987. All rights reserved.
//

#import "MathematicsTableViewCell.h"

@implementation MathematicsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setImage :(NSString *)image withFunction:(NSString *)function withDecription:(NSString *)decription{
    self.funcImageView.image = [UIImage imageNamed:image];
    self.funcImageView.contentMode = UIViewContentModeScaleAspectFit;
    self.funcNameLabel.text = function;
    self.decriptionLabel.text = decription;
}

@end
