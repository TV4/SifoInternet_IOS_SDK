//
//  NSBundle+Sifo.m
//  TSMobileAnalytics
//
//  Created by Christer Ulfsparre on 2020-10-13.
//  Copyright © 2020 Dynamo. All rights reserved.
//

#include <TargetConditionals.h>
#ifdef TARGET_OS_TVOS
#elif TARGET_OS_IOS

#import "NSBundle+Sifo.h"
#import "NSBundle+InfoPlist.h"
#import "TSMobileAnalyticsConstants.h"

@implementation NSBundle (sifo)

- (BOOL)hasAppExchangeURLSchemeSetup {
    return [[NSBundle mainBundle] containsURLScheme:[self appExchangeScheme]];
}

- (BOOL)hasAppQuerySchemeSetup {
    return [[NSBundle mainBundle] containsQueryScheme:kInternetApplicationScheme];
}

- (NSString *)appExchangeScheme {
    NSString *bundleId = [NSBundle mainBundle].bundleIdentifier;
    return [NSString stringWithFormat:@"%@%@", bundleId, kExchangeURLSchemeSuffix];
}

+ (NSString *)appVersionString {
    NSDictionary *infoDictionary = [NSBundle mainBundle].infoDictionary;

    NSString *versionString = infoDictionary[@"CFBundleShortVersionString"];
    NSString *buildString = infoDictionary[@"CFBundleVersion"];
    return [NSString stringWithFormat:@"%@(%@)", versionString, buildString];
}

@end

#endif