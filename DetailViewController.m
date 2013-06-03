//
//  DetailViewController.m
//  CustomSplitView
//
//  Created by NagaMalleswar on 26/05/13.
//  Copyright (c) 2013 MyOrganization. All rights reserved.
//

#import "DetailViewController.h"

#define DETAIL_VIEW_TITLE   @"Detail View"

@interface DetailViewController ()

@property(nonatomic,retain) IBOutlet UILabel *detailTextLabel;

@end

@implementation DetailViewController

@synthesize detailTextLabel;

#pragma mark -
#pragma mark UIViewController Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = DETAIL_VIEW_TITLE;
}

- (void)setDetailLabelText:(NSString *)detailText
{
    self.detailTextLabel.text = detailText;
}

@end
