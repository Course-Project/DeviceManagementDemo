//
//  TACDeviceTableViewController.m
//  DeviceManagement
//
//  Created by Tom Hu on 7/10/14.
//  Copyright (c) 2014 Tom Hu. All rights reserved.
//

#import "TACDeviceTableViewController.h"
#import "TACDeviceDetailViewController.h"
#import "TACDeviceAddViewController.h"

@interface TACDeviceTableViewController ()

@property (nonatomic) NSInteger cellCount; // 记录cell的个数

@end

@implementation TACDeviceTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 初始化cellCount
    self.cellCount = 0;
    
    // UI Methods
    [self configureNavigationBar];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // 重新加载tableView
    [self.tableView reloadData];
}

#pragma mark - UI Methods
- (void)configureNavigationBar {
    // 为navigationBar添加右侧按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(didClickAddButton)]; // <===看这里
}

#pragma mark - Actions
- (void)didClickAddButton {
    // 获取页面
    TACDeviceAddViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DeviceAddViewController"];
    
    // 页面跳转
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[[TACDataModel shardedDataModel] deviceArray] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DeviceCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // 获取destinationViewController
    TACDeviceDetailViewController *deviceDetailViewController = segue.destinationViewController;
    
    // 修改deviceDetailController里的数据
    deviceDetailViewController.deviceName = @"哈哈哈哈";
    deviceDetailViewController.deviceType = @"邵老板调罢了";
    deviceDetailViewController.deviceStatus = YES;
}









@end
