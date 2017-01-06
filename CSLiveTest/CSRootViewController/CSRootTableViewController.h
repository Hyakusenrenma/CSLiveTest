//
//  CSRootTableViewController.h
//  
//
//  Created by sifanchen on 16/5/13.
//  Copyright © 2016年 WipeZ. All rights reserved.
//

#import "CSRootViewController.h"

@interface CSRootTableViewController : CSRootViewController<UITableViewDelegate,UITableViewDataSource>



@property (nonatomic,readonly,retain)UITableView *tableView;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath ;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath ;



@end
