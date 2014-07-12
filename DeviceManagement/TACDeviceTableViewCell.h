//
//  TACDeviceTableViewCell.h
//  DeviceManagement
//
//  Created by Tom Hu on 7/11/14.
//  Copyright (c) 2014 Tom Hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TACDeviceTableViewCell : UITableViewCell

@property (nonatomic) NSInteger index;
@property (nonatomic, strong) NSString *deviceName;
@property (nonatomic, strong) NSString *deviceType;
@property (nonatomic) BOOL deviceStatus;

// 初始化
- (id)initWithIndex:(NSInteger)index
         DeviceName:(NSString *)name
         DeviceType:(NSString *)type
       deviceStatus:(BOOL)status;

@end
