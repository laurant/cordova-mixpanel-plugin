//
//  MixpanelWatchProperties.m
//  Mixpanel
//
//  Created by Peter Chien on 10/14/16.
//  Copyright © 2016 Mixpanel. All rights reserved.
//

#import "MixpanelWatchProperties.h"

@implementation MixpanelWatchProperties

+ (NSDictionary *)collectDeviceProperties {
    NSMutableDictionary *mutableProperties = [NSMutableDictionary dictionaryWithCapacity:5];

    mutableProperties[@"$os"] = @"watchOS";
    mutableProperties[@"$os_version"] = @"2.0";
    mutableProperties[@"$watch_model"] = [self watchModel];
    mutableProperties[@"$screen_width"] = @(136.f);
    mutableProperties[@"$screen_height"] = @(170.f);

    return [mutableProperties copy];
}

+ (NSString *)watchModel {
    return @"Apple Watch";
}

+ (NSString *)systemVersion {
    return @"2.0";
}

@end
