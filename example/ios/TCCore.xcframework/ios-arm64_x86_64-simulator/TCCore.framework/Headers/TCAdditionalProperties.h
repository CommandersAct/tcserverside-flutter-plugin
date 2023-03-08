//
//  TCAdditionalProperties.h
//  TCCore
//
//  Created by Abdelhakim SAID on 04/11/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef TCAdditionalProperties_h
#define TCAdditionalProperties_h

#import <Foundation/Foundation.h>
#import <TCCore/TCUtils.h>
#import "TCDynamicStore.h"

@class TCDynamicStore;

@interface TCAdditionalProperties : NSObject

@property (nonatomic, retain) NSMutableDictionary *additionalProperties DEPRECATED_MSG_ATTRIBUTE("Please use addAdditionalProperty methods, accessing this property directly may break your event payload.");

- (void) addAdditionalProperty: (NSString *) key withStringValue: (NSString *) value;
- (void) addAdditionalProperty: (NSString *) key withDictValue: (NSDictionary *) json;
- (void) addAdditionalProperty: (NSString *) key withBoolValue: (BOOL) value;
- (void) addAdditionalProperty: (NSString *) key withNumberValue: (NSDecimalNumber *) value;
- (void) addAdditionalProperty: (NSString *) key withDigitStringValue: (NSString *) value;
- (void) addAdditionalProperty: (NSString *) key withArrayValue: (NSArray *) value;
- (void) addAdditionalProperty: (TCDynamicStore *) store;
- (NSMutableDictionary *) getAdditionalProperties;
- (void) removeAdditionalProperty: (NSString *) key;
- (void) clearAdditionalProperties;

@end

#endif /* TCAdditionalProperties_h */
