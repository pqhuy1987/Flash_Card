//
//  MathematicsViewController.m
//  flashcard
//
//  Created by TUNG on 8/13/16.
//  Copyright © 2016 pqhuy1987. All rights reserved.
//

#import "MathematicsViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "Help.h"

#define LARGE_BUTTON_SIZE 80
#define SMALL_BUTTON_SIZE 60
#define MEDIUM_BUTTON_SIZE 70

@interface MathematicsViewController ()
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation MathematicsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
    [self setupContentView];
}

- (void)setupView {
    self.title = @"Mathematics";
    
    UIButton *leftButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 25)];
    [leftButton addTarget:self action:@selector(onTouchLeftItem:) forControlEvents:UIControlEventTouchUpInside];
    [leftButton setBackgroundImage:[UIImage imageNamed:@"previous"] forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    

    UIButton *rightButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 25)];
    [rightButton addTarget:self action:@selector(onTouchRightItem:) forControlEvents:UIControlEventTouchUpInside];
    [rightButton setBackgroundImage:[UIImage imageNamed:@"menu-alt-512"] forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
}

- (void) setupContentView {
    //---Algebra button
    UIButton *algebraButton = [self createButtonWithImage:@"besch" withFrame:CGRectMake(self.view.frame.origin.x + 30, self.view.frame.origin.y + 50, LARGE_BUTTON_SIZE, LARGE_BUTTON_SIZE)];
    [algebraButton addTarget:self action:@selector(algebraButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    //---Analysis button
    UIButton *analysisButton = [self createButtonWithImage:@"prod" withFrame:CGRectMake(self.view.frame.size.width - 80, self.view.frame.origin.y + 60, SMALL_BUTTON_SIZE, SMALL_BUTTON_SIZE)];
    [analysisButton addTarget:self action:@selector(analysisButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    //---Discrete math button
    UIButton *discreteButton = [self createButtonWithImage:@"distri" withFrame:CGRectMake(self.view.frame.size.width/2 - 30, self.view.frame.origin.y + 130, LARGE_BUTTON_SIZE, LARGE_BUTTON_SIZE)];
    [discreteButton addTarget:self action:@selector(discreteButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    //---Engineering button
    UIButton *engineeringButton = [self createButtonWithImage:@"recycle" withFrame:CGRectMake(self.view.frame.origin.x + 30, self.view.frame.origin.y + 170, SMALL_BUTTON_SIZE, SMALL_BUTTON_SIZE)];
    [engineeringButton addTarget:self action:@selector(engineeringButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    //---Topology button
    UIButton *topologyButton = [self createButtonWithImage:@"lag" withFrame:CGRectMake(self.view.frame.size.width - 80, self.view.frame.origin.y + 180, SMALL_BUTTON_SIZE, SMALL_BUTTON_SIZE)];
    [topologyButton addTarget:self action:@selector(topologyButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    //---Precalculus button
    UIButton *precalculusButton = [self createButtonWithImage:@"as" withFrame:CGRectMake(self.view.frame.size.width/2 - 30, self.view.frame.origin.y + 250, LARGE_BUTTON_SIZE, LARGE_BUTTON_SIZE)];
    [precalculusButton addTarget:self action:@selector(precalculusButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    //---Transport button
    UIButton *transportButton = [self createButtonWithImage:@"trans" withFrame:CGRectMake(self.view.frame.origin.x + 30, self.view.frame.origin.y + 280, SMALL_BUTTON_SIZE, SMALL_BUTTON_SIZE)];
    [transportButton addTarget:self action:@selector(transportButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    //---Logic/Foudations button
    UIButton *logicButton = [self createButtonWithImage:@"fl1" withFrame:CGRectMake(self.view.frame.size.width - 80, self.view.frame.origin.y + 280, MEDIUM_BUTTON_SIZE, MEDIUM_BUTTON_SIZE)];
    [logicButton addTarget:self action:@selector(logicButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    //---Kd button
    UIButton *kdButton = [self createButtonWithImage:@"kd" withFrame:CGRectMake(self.view.frame.origin.x + 30, self.view.frame.origin.y + 380, LARGE_BUTTON_SIZE, LARGE_BUTTON_SIZE)];
    [kdButton addTarget:self action:@selector(kdButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (UIButton *)createButtonWithImage: (NSString *)image withFrame:(CGRect)buttonFrame {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    button.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    //width and height should be same value
    button.frame = buttonFrame;
    
    //Clip/Clear the other pieces whichever outside the rounded corner
    button.clipsToBounds = YES;
    
    //half of the width
    button.layer.cornerRadius = buttonFrame.size.width/2.0f;
    button.layer.borderColor = UIColorFromRGB(0x0080FF).CGColor;
    button.layer.borderWidth = 2.0f;
    [button setImageEdgeInsets:UIEdgeInsetsMake(10, 10, 10, 10)];
    
    [self.contentView addSubview:button];
    return button;
}

- (void)onTouchRightItem:(id)sender {
    UIView *menuView = [[UIView alloc] init];
    menuView.frame = CGRectMake(self.view.frame.size.width - self.view.frame.size.width/2, self.view.frame.origin.y, self.view.frame.size.width/2, self.view.frame.size.height);
    menuView.backgroundColor = [UIColor blueColor];
    

}

- (void)onTouchLeftItem:(id)sender {
    //Effect to present view
    CATransition *transition = [CATransition animation];
    transition.duration = 0.3;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromLeft;
    [self.view.window.layer addAnimation:transition forKey:nil];
    
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)algebraButtonDidTap:(UIButton*)tappedButton{
    
}

- (void)analysisButtonDidTap:(UIButton*)tappedButton{
    
}

- (void)discreteButtonDidTap:(UIButton*)tappedButton{
    
}
- (void)engineeringButtonDidTap:(UIButton*)tappedButton{
    
}
- (void)topologyButtonDidTap:(UIButton*)tappedButton{
    
}
- (void)precalculusButtonDidTap:(UIButton*)tappedButton{
    
}
- (void)transportButtonDidTap:(UIButton*)tappedButton{
    
}
- (void)logicButtonDidTap:(UIButton*)tappedButton{
    
}
- (void)kdButtonDidTap:(UIButton*)tappedButton{
    
}


@end
