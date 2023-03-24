//
//  TCAddPaymentInfoEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCAddPaymentInfoEvent_h
#define events_TCAddPaymentInfoEvent_h

#if __has_include(<TCServerSide_noIDFA/TCECommerceEvent.h>)
#import <TCServerSide_noIDFA/TCECommerceEvent.h>
#else
#import <TCServerSide/TCECommerceEvent.h>
#endif

@interface TCAddPaymentInfoEvent : TCECommerceEvent

@property (nonatomic, retain) NSString *paymentMethod;
@property (nonatomic, retain) NSString *coupon;
@property (nonatomic, retain) NSDecimalNumber *revenue;

- (instancetype) initWithPayementMethod: (NSString *) payementMethod;

@end

#endif
