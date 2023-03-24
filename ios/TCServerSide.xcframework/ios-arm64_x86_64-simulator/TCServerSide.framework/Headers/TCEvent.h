//
//  TCEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCEvent_h
#define events_TCEvent_h
#import <Foundation/Foundation.h>
#import <TCCore/TCUtils.h>
#import <TCCore/TCAdditionalProperties.h>
#if __has_include(<TCServerSide_noIDFA/TCEventPropertiesNames.h>)
#import <TCServerSide_noIDFA/TCEventPropertiesNames.h>
#import <TCServerSide_noIDFA/ETCPayementMethod.h>
#import <TCServerSide_noIDFA/ETCPurchaseStatus.h>
#else
#import <TCServerSide/TCEventPropertiesNames.h>
#import <TCServerSide/ETCPayementMethod.h>
#import <TCServerSide/ETCPurchaseStatus.h>
#endif

@class TCDynamicStore;

@interface TCEvent : TCAdditionalProperties

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *pageType;
@property (nonatomic, retain) NSString *pageName;

- (BOOL) verifyEvent;
- (NSMutableDictionary *) getJsonObject;
- (NSArray *) getItemListAsJson: (NSArray *) items;

- (void) addAdditionalParameter: (NSString *) key withValue: (NSString *) value __attribute__ ((deprecated));
- (void) addAdditionalParameter: (NSString *) key forJsonDict: (NSDictionary *) json __attribute__ ((deprecated));
- (void) addAdditionalParameter: (TCDynamicStore *) store __attribute__ ((deprecated));

@end

#endif
