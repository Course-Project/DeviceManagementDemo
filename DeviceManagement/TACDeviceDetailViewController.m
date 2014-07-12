//
//  TACDeviceDetailViewController.m
//  DeviceManagement
//
//  Created by Tom Hu on 7/10/14.
//  Copyright (c) 2014 Tom Hu. All rights reserved.
//

#import "TACDeviceDetailViewController.h"
#import "TACDeviceModel.h"

@interface TACDeviceDetailViewController ()

@end

@implementation TACDeviceDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
    
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // UI Methods
    [self configureView];
    [self configureNavigationBar];
}

#pragma mark - UI Methods
- (void)configureView {
    self.deviceTypeLabel.text = self.deviceModel.deviceType;
    self.deviceNameLabel.text = self.deviceModel.deviceName;
    
    if ([self.deviceModel isBorrowed]) {
        self.diviceStatusLabel.text = @"Borrowed";
    } else {
        self.diviceStatusLabel.text = @"Being Held";
    }
}

- (void)configureNavigationBar {
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Borrow" style:UIBarButtonItemStyleDone target:self action:@selector(didClickBorrowButton)];
}

#pragma mark - Actions
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    
    [self.nameTextField resignFirstResponder];
    [self.phoneTextField resignFirstResponder];
}

- (void)didClickBorrowButton {
    // 获取到刚才的输入
    
    NSLog(@"我被点击了！！");
    NSLog(@"Name: %@", self.nameTextField.text);
    NSLog(@"Phone: %@", self.phoneTextField.text);
}









@end
