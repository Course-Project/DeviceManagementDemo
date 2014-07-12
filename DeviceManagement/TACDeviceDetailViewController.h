//
//  TACDeviceDetailViewController.h
//  DeviceManagement
//
//  Created by Tom Hu on 7/10/14.
//  Copyright (c) 2014 Tom Hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TACDeviceDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *deviceNameLabel; // 显示设备名称
@property (weak, nonatomic) IBOutlet UILabel *deviceTypeLabel; // 显示设备类型
@property (weak, nonatomic) IBOutlet UILabel *diviceStatusLabel; // 显示设备状态
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;

@property (nonatomic, strong) NSString *deviceName; // 设备名称
@property (nonatomic, strong) NSString *deviceType; // 设备类型
@property (nonatomic) BOOL deviceStatus; // 设备是否可借








@end
