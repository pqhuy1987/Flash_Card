//
//  ViewController.m
//  flashcard
//
//  Created by Pham Quang Huy on 8/12/16.
//  Copyright © 2016 pqhuy1987. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *singleFingerTap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap:)];
    [self.view addGestureRecognizer:singleFingerTap];
    

}

//The event handling method
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer {
    [self performSegueWithIdentifier:@"MainView" sender:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
