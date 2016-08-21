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
#import "SWRevealViewController.h"
#import "MathematicsTableViewCell.h"

#define LARGE_BUTTON_SIZE 80
#define SMALL_BUTTON_SIZE 60
#define MEDIUM_BUTTON_SIZE 70

#define ALGEBRA_SEGUE   @"algebraSegue"


typedef enum {
    Algebra,
    DicreteMath,
    Engineering,
    Recycle,
    Topology,
    Precalculus,
    LogicFoundations,
    Head
}listTask;

@interface MathematicsViewController () <SWRevealViewControllerDelegate, UITableViewDelegate, UITableViewDataSource> {
    NSArray *listArray;
}
@property (weak, nonatomic) IBOutlet UITableView *listFuncTableView;

@end

@implementation MathematicsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    listArray = [NSArray arrayWithObjects:@"Algebra", @"Dicrete Math", @"Engineering", @"Recycle", @"Topology", @"Pre-Caculus", @"Logic/Foundation", @"Head", nil];
    self.listFuncTableView.delegate = self;
    self.listFuncTableView.dataSource = self;
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
    
    self.revealViewController.delegate = self;
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)onTouchRightItem:(id)sender {
    [self.revealViewController rightRevealToggle:nil];
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

#pragma mark - UITableViewDatasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [listArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MathematicsTableViewCell *cell;
    static NSString *identifier = @"mathematicsCell";
    cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (indexPath.row == Algebra) {
        [cell setImage:@"besch" withFunction:[listArray objectAtIndex:indexPath.row] withDecription:@"Lorem ipsum dolor sit amet"];
    } else if (indexPath.row == DicreteMath ) {
        [cell setImage:@"prod" withFunction:[listArray objectAtIndex:indexPath.row] withDecription:@"Lorem ipsum dolor sit amet"];
    } else if (indexPath.row == Engineering) {
        [cell setImage:@"distri" withFunction:[listArray objectAtIndex:indexPath.row] withDecription:@"Lorem ipsum dolor sit amet"];
    } else if (indexPath.row == Recycle) {
        [cell setImage:@"recycle" withFunction:[listArray objectAtIndex:indexPath.row] withDecription:@"Lorem ipsum dolor sit amet"];
    } else if (indexPath.row == Topology) {
        [cell setImage:@"lag" withFunction:[listArray objectAtIndex:indexPath.row] withDecription:@"Lorem ipsum dolor sit amet"];
    } else if (indexPath.row == Precalculus) {
        [cell setImage:@"as" withFunction:[listArray objectAtIndex:indexPath.row] withDecription:@"Lorem ipsum dolor sit amet"];
    } else if (indexPath.row == LogicFoundations) {
        [cell setImage:@"trans" withFunction:[listArray objectAtIndex:indexPath.row] withDecription:@"Lorem ipsum dolor sit amet"];
    } else if (indexPath.row == Head) {
        [cell setImage:@"kd" withFunction:[listArray objectAtIndex:indexPath.row] withDecription:@"Lorem ipsum dolor sit amet"];
    }
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == Algebra) {
        [self performSegueWithIdentifier:ALGEBRA_SEGUE sender:nil];
    } else if (indexPath.row == DicreteMath ) {
        
    } else if (indexPath.row == Engineering) {
        
    } else if (indexPath.row == Recycle) {
        
    } else if (indexPath.row == Topology) {
        
    } else if (indexPath.row == Precalculus) {
        
    } else if (indexPath.row == LogicFoundations) {
        
    } else if (indexPath.row == Head) {
        
    }
}


@end








