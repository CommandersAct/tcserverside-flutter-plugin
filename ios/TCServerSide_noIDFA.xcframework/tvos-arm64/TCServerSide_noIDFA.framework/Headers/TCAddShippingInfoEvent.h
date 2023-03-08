//
//  TCAddShippingInfoEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCAddShippingInfoEvent_h
#define events_TCAddShippingInfoEvent_h
#if __has_include(<TCServerSide_noIDFA/TCECommerceEvent.h>)
#import <TCServerSide_noIDFA/TCECommerceEvent.h>
#else
#import <TCServerSide/TCECommerceEvent.h>
#endif

@interface TCAddShippingInfoEvent : TCECommerceEvent

@property (nonatomic, retain) NSDecimalNumber *value;
@property (nonatomic, retain) NSString *coupon;
@property (nonatomic, retain) NSString *shippingTier;

- (instancetype) initWithItems: (NSArray *) items withValue: (NSDecimalNumber *) value withCurrency: (NSString *) currency;

@end
#endif
