//
//  SDKIntegrationValidator.h
//  TSMobileAnalytics
//
//  Created by Christer Ulfsparre on 2020-10-13.
//  Copyright © 2020 Dynamo. All rights reserved.
//
#include <TargetConditionals.h>
#ifdef TARGET_OS_IOS

#ifndef SDKIntegrationValidator_h
#define SDKIntegrationValidator_h

#import <Foundation/Foundation.h>

@interface SDKIntegrationValidator : NSObject

+ (void)validateWithIdfa:(BOOL)idfa
         applicationName:(NSString *)applicationName
                    cpid:(NSString *)cpid;

@end

#endif /* SDKIntegrationValidator_h */

#endif