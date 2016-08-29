//
//  MathematicsTableViewCell.h
//  flashcard
//
//  Created by TUNG on 8/22/16.
//  Copyright © 2016 pqhuy1987. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MathematicsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *funcImageView;
@property (weak, nonatomic) IBOutlet UILabel *funcNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *decriptionLabel;
- (void)setImage :(NSString *)image withFunction:(NSString *)function withDecription:(NSString *)decription;
@end
