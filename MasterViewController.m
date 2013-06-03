//
//  MasterViewController.m
//  CustomSplitView
//
//  Created by NagaMalleswar on 26/05/13.
//  Copyright (c) 2013 MyOrganization. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

#define MASTER_VIEW_TITLE   @"Master View"
#define NUMBER_OF_ROWS      10
#define CELL_IDENTIFIER     @"MasterCell"
#define DETAIL_TEXT         [NSString stringWithFormat:@"Row %d %d",indexPath.row,indexPath.section]

@interface MasterViewController ()

@end

@implementation MasterViewController

@synthesize detailViewController;

#pragma mark -
#pragma mark UIViewController Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = MASTER_VIEW_TITLE;
}

#pragma mark -
#pragma mark UITableViewDatasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return NUMBER_OF_ROWS;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *masterCell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER];
    
    if( !masterCell )
    {
        masterCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_IDENTIFIER];
        masterCell.textLabel.text = DETAIL_TEXT;
    }
    
    return masterCell;
}

#pragma mark -
#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.detailViewController setDetailLabelText:DETAIL_TEXT];
}

@end
