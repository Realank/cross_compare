//
//  HomeTableViewController.m
//  CrsPltfm-iOS
//
//  Created by Realank on 2019/5/16.
//  Copyright © 2019 Realank. All rights reserved.
//

#import "HomeTableViewController.h"
#import "HomeTableViewCell.h"
@interface HomeTableViewController ()

@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"列表展示-iOS";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1000;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HomeTableViewCell *cell = (HomeTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.imageName = [NSString stringWithFormat:@"car-%ld",indexPath.row %5];
    cell.title = [NSString stringWithFormat:@"%ld行",(long)indexPath.row];
    cell.content = [NSString stringWithFormat:@"第%ld行的展示效果\n第%ld行的展示效果\n第%ld行的展示效果",(long)indexPath.row,(long)indexPath.row,(long)indexPath.row];
    
    return cell;
}



@end
