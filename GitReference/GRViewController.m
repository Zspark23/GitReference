//
//  GRViewController.m
//  GitReference
//
//  Created by Zack Spicer on 7/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "GRViewController.h"

@interface GRViewController ()

@end

@implementation GRViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"GitReference";
    
    UIScrollView *scrollView = [UIScrollView new];
    scrollView.frame = self.view.frame;
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, 1000.0);
    [self.view addSubview:scrollView];
    
    UIView *redView = [UIView new];
    redView.frame = CGRectMake(100.0, 600.0, 100.0, 100.0);
    redView.backgroundColor = [UIColor redColor];
    [scrollView addSubview:redView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
