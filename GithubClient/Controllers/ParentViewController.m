//
//  ParentViewController.m
//  GithubClient
//
//  Created by Artem Lytkin on 28.08.18.
//  Copyright © 2018 Artem. All rights reserved.
//

#import "ParentViewController.h"
#import "RequestActivityIndicatorView.h"

@interface ParentViewController ()

@property (strong, nonatomic) RequestActivityIndicatorView *activityIndicator;

@end

@implementation ParentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.activityIndicator = [[RequestActivityIndicatorView alloc] init];
    [self.view addSubview:self.activityIndicator];
    [self.activityIndicator addActivityIndicatorViewToCenter];
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.tabBarController.tabBar.tintColor =
    [UIColor colorWithRed:0.24 green:0.40 blue:0.53 alpha:1.00];
}

- (void) startNetworkActivity {
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [self.activityIndicator startAnimating];
}

- (void) stopNetworkActivity {
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    [self.activityIndicator stopAnimating];
}

@end
