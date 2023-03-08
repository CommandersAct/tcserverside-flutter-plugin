//
//  TCBeginCheckoutEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCBeginCheckoutEvent_h
#define events_TCBeginCheckoutEvent_h
#if __has_include(<TCServerSide_noIDFA/TCECommerceEvent.h>)
#import <TCServerSide_noIDFA/TCECommerceEvent.h>
#else
#import <TCServerSide/TCECommerceEvent.h>
#endif

@interface TCBeginCheckoutEvent : TCECommerceEvent

@property (nonatomic, retain) NSDecimalNumber * _Nonnull revenue;
@property (nonatomic, retain) NSDecimalNumber * _Nonnull value;
@property (nonatomic, retain) NSString * _Nullable coupon;

- (instancetype _Nonnull) initWithRevenue: (NSDecimalNumber * _Nonnull) revenue withValue: (NSDecimalNumber * _Nonnull) value withCurrency: ( NSString * _Nonnull) currency withItems: (NSArray * _Nonnull) TCItems;

@end

#endif
