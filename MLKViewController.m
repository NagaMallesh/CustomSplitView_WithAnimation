//
//  MLKViewController.m
//  CustomSplitView
//
//  Created by NagaMalleswar on 26/05/13.
//  Copyright (c) 2013 MyOrganization. All rights reserved.
//

#import "MLKViewController.h"

@interface MLKViewController ()

@end

@implementation MLKViewController

#pragma mark - Interface Orientation

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{    
    return YES;
}

#ifdef __IPHONE_6_0

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    NSUInteger supportedInterfaceOrientations = UIInterfaceOrientationMaskAll;
        
    return supportedInterfaceOrientations;
}

#endif

@end
