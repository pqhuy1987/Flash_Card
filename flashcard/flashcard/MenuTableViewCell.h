//
//  MenuTableViewCell.h
//  flashcard
//
//  Created by TUNG on 8/16/16.
//  Copyright © 2016 pqhuy1987. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *funcIcon;
@property (weak, nonatomic) IBOutlet UILabel *functionLabel;
@property (weak, nonatomic) IBOutlet UILabel *decriptionLabel;

- (void)setImage :(NSString *)image withFunction:(NSString *)function withDecription:(NSString *)decription;

@end
