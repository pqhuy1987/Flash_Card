//
//  MathematicsViewController.m
//  flashcard
//
//  Created by TUNG on 8/13/16.
//  Copyright © 2016 pqhuy1987. All rights reserved.
//

#import "MathematicsViewController.h"

@interface MathematicsViewController ()

@end

@implementation MathematicsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
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


@end
