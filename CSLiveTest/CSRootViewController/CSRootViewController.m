//
//  CSRootViewController.m
//  
//
//  Created by sifanchen on 16/5/13.
//  Copyright © 2016年 WipeZ. All rights reserved.
//

#import "CSRootViewController.h"

@interface CSRootViewController()
{
    UILabel *titleLabel;
}

@end


@implementation CSRootViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    self.navigationController.navigationBarHidden = NO;
    //    [[UINavigationBar appearance]setBarTintColor:COLOR_BLUE];
    [[UINavigationBar appearance]setTintColor:[UIColor blackColor]];
    self.navigationController.navigationBar.translucent = NO;
    self.view.backgroundColor = BACKGROUND_COLOR;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:70*px],NSForegroundColorAttributeName:[UIColor blackColor]}];
    
}



- (void)setTitleString:(NSString *)titleString {
    _titleString = titleString;
    [self setTitle:titleString];
}



- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.view endEditing:true];
}



@end
