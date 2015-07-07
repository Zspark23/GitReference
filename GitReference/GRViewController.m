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

static CGFloat margin = 15;
static NSString * const Command = @"command";
static NSString * const Reference = @"reference";


- (void)viewDidLoad {
    [super viewDidLoad];
    
    float top = 0;
    NSArray *array = [self gitCommands];
    
    self.title = @"GitReference";
    
    UIScrollView *scrollView = [UIScrollView new];
    scrollView.frame = self.view.frame;
    [self.view addSubview:scrollView];
    
    for(int i = 0; i < array.count; i++)
    {
        UILabel *command = [UILabel new];
        UILabel *reference = [UILabel new];
        
        command.text = [array[i] objectForKey:@"command"];
        reference.text = [array[i] valueForKey:@"reference"];
        
        command.frame = CGRectMake(15.0, top, scrollView.frame.size.width, 130);
        reference.frame = CGRectMake(45, top + 20, scrollView.frame.size.width + 40, 130);
        top += 100;
        
        [scrollView addSubview:command];
        [scrollView addSubview:reference];
    }
    
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width + 100, top + 30);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSArray *)gitCommands {
    
    return @[@{Command: @"git status", Reference: @": shows changed files"},
             @{Command: @"git diff", Reference: @": shows actual changes"},
             @{Command: @"git add .", Reference: @": adds changed files to the commit"},
             @{Command: @"git commit -m \"notes\"", Reference: @": commits the changes"},
             @{Command: @"git push origin _branch_", Reference: @": pushes commits to branch named _branch_"},
             @{Command: @"git log", Reference: @": displays progress log"},
             @{Command: @"git comment --amend", Reference: @": re-enter last commit message"}
             ];
    
}

- (CGFloat)heightOfReferenceString:(NSString *)reference {
    
    CGRect bounding = [reference boundingRectWithSize:CGSizeMake(self.view.frame.size.width - 2 * margin, 0)
                                              options:NSStringDrawingUsesLineFragmentOrigin
                                           attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]}
                                              context:nil];
    
    return bounding.size.height;
    
}



@end
