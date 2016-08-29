//
//  quizViewController.m
//  flashcard
//
//  Created by HTK-iMac on 8/20/16.
//  Copyright © 2016 pqhuy1987. All rights reserved.
//

#import "quizViewController.h"

@interface quizViewController ()

@property (weak, nonatomic) IBOutlet UITextView *questionTextView;
@property (weak, nonatomic) IBOutlet UITextView *answerTextView;
@property (weak, nonatomic) IBOutlet UIView *gestureView;
@property (weak, nonatomic) IBOutlet UIView *swipeleftImageView;
@property (weak, nonatomic) IBOutlet UILabel *nextQuestionTextView;
@property (weak, nonatomic) IBOutlet UIImageView *swipeupImageView;
@property (weak, nonatomic) IBOutlet UILabel *seeAnswerTextView;



@end

@implementation quizViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
    
    UISwipeGestureRecognizer * swipeleft  = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeleft)];
    swipeleft.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.gestureView addGestureRecognizer:swipeleft];
    
    UISwipeGestureRecognizer * swipeup  = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeup)];
    swipeup.direction=UISwipeGestureRecognizerDirectionUp;
    [self.gestureView addGestureRecognizer:swipeup];
}

- (void)swipeleft {
    [self swipeup];
    self.questionTextView.text = @"Next Question is comming soon...";
    self.answerTextView.text = @"";
    self.answerTextView.hidden = YES;
    self.nextQuestionTextView.hidden = YES;
    self.swipeleftImageView.hidden = YES;
}

- (void)swipeup {
    self.answerTextView.hidden = NO;
    self.swipeupImageView.hidden = YES;
    self.seeAnswerTextView.hidden = YES;
}

- (void)setupView {
    self.title = @"Quiz Test";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    self.answerTextView.hidden = YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
