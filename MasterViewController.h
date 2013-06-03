//
//  MasterViewController.h
//  CustomSplitView
//
//  Created by NagaMalleswar on 26/05/13.
//  Copyright (c) 2013 MyOrganization. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MLKViewController.h"

@class DetailViewController;

@interface MasterViewController : MLKViewController

@property(nonatomic,retain) DetailViewController *detailViewController;

@end
