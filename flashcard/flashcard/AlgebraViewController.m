//
//  AlgebraViewController.m
//  flashcard
//
//  Created by HTK-iMac on 8/20/16.
//  Copyright © 2016 pqhuy1987. All rights reserved.
//

#import "AlgebraViewController.h"

#define LARGE_BUTTON_SIZE 80
#define SMALL_BUTTON_SIZE 60
#define MEDIUM_BUTTON_SIZE 70

#define LEARN_SEGUE     @"learnSegue"
#define CARDS_SEGUE     @"cardsSegue"
#define QUIZ_SEGUE      @"quizSegue"
#define EBOOK_SEGUE     @"ebookSegue"

@interface AlgebraViewController ()

@end


@implementation AlgebraViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
    [self setupContentView];
}

- (void)setupView{
    self.title = @"Algebra";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
}

- (void)setupContentView {
    //---Learn button
    UIButton *learnButton = [self createButtonWithImage:@"learn" withFrame:CGRectMake(self.view.frame.origin.x + 30, self.view.frame.origin.y + 100, LARGE_BUTTON_SIZE, LARGE_BUTTON_SIZE)];
    [learnButton addTarget:self action:@selector(onTouchLearn:) forControlEvents:UIControlEventTouchUpInside];
    
    //---Cards button
    UIButton *cardsButton = [self createButtonWithImage:@"cards" withFrame:CGRectMake(self.view.frame.size.width - 80, self.view.frame.origin.y +110, SMALL_BUTTON_SIZE, SMALL_BUTTON_SIZE)];
    [cardsButton addTarget:self action:@selector(onTouchCards:) forControlEvents:UIControlEventTouchUpInside];
    
    //---Quiz button
    UIButton *quizButton = [self createButtonWithImage:@"quiz" withFrame:CGRectMake(self.view.frame.size.width/2 - 30, self.view.frame.origin.y + 200, MEDIUM_BUTTON_SIZE, MEDIUM_BUTTON_SIZE)];
    [quizButton addTarget:self action:@selector(onTouchQuiz:) forControlEvents:UIControlEventTouchUpInside];
    
    //---Ebooking button
    UIButton *ebookButton = [self createButtonWithImage:@"ebooking" withFrame:CGRectMake(self.view.frame.origin.x + 130, self.view.frame.origin.y + 320, LARGE_BUTTON_SIZE, LARGE_BUTTON_SIZE)];
    [ebookButton addTarget:self action:@selector(onTouchEbooking:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTouchLearn:(id)sender {
    [self performSegueWithIdentifier:LEARN_SEGUE sender:nil];
}

- (IBAction)onTouchCards:(id)sender {
    [self performSegueWithIdentifier:CARDS_SEGUE sender:nil];
}

- (IBAction)onTouchQuiz:(id)sender {
    [self performSegueWithIdentifier:QUIZ_SEGUE sender:nil];
}

- (IBAction)onTouchEbooking:(id)sender {
    [self performSegueWithIdentifier:EBOOK_SEGUE sender:nil];
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
    
    [self.view addSubview:button];
    return button;
}

@end
