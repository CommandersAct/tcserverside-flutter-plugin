//
//  TCAddToCartEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCAddToCartEvent_h
#define events_TCAddToCartEvent_h
#if __has_include(<TCServerSide_noIDFA/TCECommerceEvent.h>)
#import <TCServerSide_noIDFA/TCECommerceEvent.h>
#else
#import <TCServerSide/TCECommerceEvent.h>
#endif

@interface TCAddToCartEvent : TCECommerceEvent


@property (nonatomic, retain) NSDecimalNumber *value;

- (instancetype) initWIthItems: (NSArray *) TCItems;
- (instancetype) initWithValue: (NSDecimalNumber *) value withCurrency: (NSString *) currency withItems: (NSArray *) items;

@end

#endif
