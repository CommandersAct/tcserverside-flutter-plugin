//
//  TCDevice.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef schemes_TCDevice_h
#define schemes_TCDevice_h

#import <Foundation/Foundation.h>
#import <TCCore/TCSingleton.h>
#import <TCCore/TCMacros.h>
#import <TCCore/TCAdditionalProperties.h>

@interface TCDevice : TCAdditionalProperties

SINGLETON_CLASS_H(TCDevice)

@property (nonatomic, retain) NSString *sdkID;
@property (nonatomic, retain) NSString *manufacturer;
@property (nonatomic, retain) NSString *model;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *type;
@property (nonatomic, retain) NSString *timezone;
@property (nonatomic, retain) NSString *IDFA;
@property (nonatomic, retain) NSString *IDFV;
@property (nonatomic, retain) NSString *adTrackingEnabled;
@property (nonatomic, retain) NSString *user_agent;
@property (nonatomic, retain) NSString *osName;
@property (nonatomic, retain) NSString *osVersion;
@property (nonatomic, retain) NSDecimalNumber *screenWidth;
@property (nonatomic, retain) NSDecimalNumber *screenHeight;

- (NSDictionary *) getJsonObject;
- (void) setAdvertisingIds;
- (TCAdditionalProperties *) getOsProperties;
- (TCAdditionalProperties *) getScreenProperties;

@end

#endif
