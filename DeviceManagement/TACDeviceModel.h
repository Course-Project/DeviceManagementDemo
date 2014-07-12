//
//  TACDeviceModel.h
//  DeviceManagement
//
//  Created by Tom Hu on 7/12/14.
//  Copyright (c) 2014 Tom Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TACDeviceModel : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *deviceName;
@property (nonatomic, strong) NSString *deviceType;
@property (nonatomic) BOOL isBorrowed;

- (id)initWithDeviceName:(NSString *)deviceName DeviceType:(NSString *)deviceType;

@end
