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
    
    UIButton *leftButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 35, 30)];
    [leftButton addTarget:self action:@selector(onTouchRightItem:) forControlEvents:UIControlEventTouchUpInside];
    [leftButton setBackgroundImage:[UIImage imageNamed:@"PreviousIcon"] forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    

    UIButton *rightButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 35, 30)];
    [rightButton addTarget:self action:@selector(onTouchRightItem:) forControlEvents:UIControlEventTouchUpInside];
    [rightButton setBackgroundImage:[UIImage imageNamed:@"MenuIcon"] forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
}

- (void)onTouchRightItem:(id)sender {
}

- (void)onTouchLeftItem:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
