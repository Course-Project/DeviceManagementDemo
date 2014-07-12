//
//  TACDeviceTableViewCell.m
//  DeviceManagement
//
//  Created by Tom Hu on 7/11/14.
//  Copyright (c) 2014 Tom Hu. All rights reserved.
//

#import "TACDeviceTableViewCell.h"

@implementation TACDeviceTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithIndex:(NSInteger)index
         DeviceName:(NSString *)name
         DeviceType:(NSString *)type
       deviceStatus:(BOOL)status {
    self = [super init];
    if (self) {
        self.deviceName = name;
        self.deviceType = type;
        self.deviceStatus = status;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
