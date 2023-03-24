//
//  TCRefundEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCRefundEvent_h
#define events_TCRefundEvent_h
#if __has_include(<TCServerSide_noIDFA/TCECommerceEvent.h>)
#import <TCServerSide_noIDFA/TCECommerceEvent.h>
#else
#import <TCServerSide/TCECommerceEvent.h>
#endif

@interface TCRefundEvent : TCECommerceEvent

@property (nonatomic, retain) NSString *ID;
@property (nonatomic, retain) NSDecimalNumber *revenue;
@property (nonatomic, retain) NSDecimalNumber *value;
@property (nonatomic, retain) NSDecimalNumber *shippingAmount;
@property (nonatomic, retain) NSDecimalNumber *taxAmount;
@property (nonatomic, retain) NSString *coupon;
@property (nonatomic, retain) NSString *type;
@property (nonatomic, retain) NSString *url;

- (instancetype) initWithID: (NSString *) ID withRevenue: (NSDecimalNumber *) revenue withValue: (NSDecimalNumber *) value withCurrency: (NSString *) currency withType: (NSString *) type withItems: (NSArray *) items;

- (instancetype) initWithID: (NSString *) ID withRevenue: (NSDecimalNumber *) revenue withValue: (NSDecimalNumber *) value withCurrency: (NSString *) currency withType: (NSString *) type;

@end

#endif
