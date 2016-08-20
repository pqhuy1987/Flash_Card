//
//  MenuViewController.m
//  flashcard
//
//  Created by TUNG on 8/16/16.
//  Copyright © 2016 pqhuy1987. All rights reserved.
//

#import "MenuViewController.h"
#import "MenuTableViewCell.h"
#import "SWRevealViewController.h"

#define NORMAL_TABLE_CELL_HEIGHT        50
#define HEADER_TABLE__HEIGHT            40

typedef enum {
    Share,
    Reminder,
    ResetCache,
    HelpGuide,
    SendFB,
    Terms,
    Version,
    CreatedBy
}functionTask;

@interface MenuViewController () <UITableViewDelegate, UITableViewDataSource> {
    NSArray *listFunction;
}
@property (strong, nonatomic) IBOutlet UITableView *functionTable;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    listFunction = @[@"Share", @"Reminder", @"Reset", @"Help", @"SendFeedBack", @"Terms", @"Version", @"Created by"];
    self.functionTable.delegate = self;
    self.functionTable.dataSource = self;
    self.functionTable.tableFooterView = [[UIView alloc] init];
    self.functionTable.backgroundView = nil;
    self.functionTable.backgroundColor = UIColorFromRGB(0x19A6FF);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableViewDatasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return listFunction.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MenuTableViewCell *cell;
    static NSString *identifier = @"menuCell";
    cell = [tableView dequeueReusableCellWithIdentifier:identifier];

    if (indexPath.row == Share) {
        [cell setImage:@"share" withFunction:@"Share" withDecription:@""];
    } else if (indexPath.row == Reminder) {
        [cell setImage:@"reminder" withFunction:@"Reminder" withDecription:@""];
    } else if (indexPath.row == ResetCache) {
        [cell setImage:@"reset" withFunction:@"Reset & Clear Cache" withDecription:@""];
    } else if (indexPath.row == HelpGuide) {
        [cell setImage:@"helpguide" withFunction:@"Help Guide" withDecription:@""];
    } else if (indexPath.row == SendFB) {
        [cell setImage:@"feed" withFunction:@"Send us feedback" withDecription:@""];
    } else if (indexPath.row == Terms) {
        [cell setImage:@"terms" withFunction:@"Terms & Privacy" withDecription:@""];
    } else if (indexPath.row == Version) {
        [cell setImage:@"app" withFunction:@"App Version" withDecription:@""];
    } else if (indexPath.row == CreatedBy) {
        [cell setImage:@"powerd" withFunction:@"Created by" withDecription:@""];
    }
    return cell;

}

#pragma mark - TableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return NORMAL_TABLE_CELL_HEIGHT;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 30)];
    [headerView setBackgroundColor:UIColorFromRGB(0x19A6FF)];
    return headerView;
}
- (IBAction)onTouchBackButton:(id)sender {
    [self.revealViewController rightRevealToggle:nil];
}

@end
