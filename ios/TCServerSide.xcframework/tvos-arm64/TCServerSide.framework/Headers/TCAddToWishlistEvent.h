//
//  TCAddToWishlistEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCAddToWishlistEvent_h
#define events_TCAddToWishlistEvent_h
#if __has_include(<TCServerSide_noIDFA/TCECommerceEvent.h>)
#import <TCServerSide_noIDFA/TCECommerceEvent.h>
#else
#import <TCServerSide/TCECommerceEvent.h>
#endif

@interface TCAddToWishlistEvent : TCECommerceEvent

@property (nonatomic, retain) NSDecimalNumber *value;

- (instancetype) initWithItems: (NSArray *) TCItems;

@end

#endif
