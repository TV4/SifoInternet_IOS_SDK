//
//  TSMobileAnalytics.h
//  TSMobileAnalytics
//
//  Created by JN on 2021-5-18.
//

#include <TargetConditionals.h>
#ifdef TARGET_OS_TVOS
#elif TARGET_OS_IOS

#import <Foundation/Foundation.h>

//! Project version number for TSMobileAnalytics.
FOUNDATION_EXPORT double TSMobileAnalyticsVersionNumber;

//! Project version string for TSMobileAnalytics.
FOUNDATION_EXPORT const unsigned char TSMobileAnalyticsVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <TSMobileAnalytics/PublicHeader.h>

#import "../TSMobileAnalytics-Class.h"

#endif