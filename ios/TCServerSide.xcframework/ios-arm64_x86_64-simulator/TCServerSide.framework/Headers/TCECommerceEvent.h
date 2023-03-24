//
//  TCECommerceEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCECommerceEvent_h
#define events_TCECommerceEvent_h
#if __has_include(<TCServerSide_noIDFA/TCEvent.h>)
#import <TCServerSide_noIDFA/TCEvent.h>
#import <TCServerSide_noIDFA/TCItem.h>
#else
#import <TCServerSide/TCEvent.h>
#import <TCServerSide/TCItem.h>
#endif

@interface TCECommerceEvent : TCEvent

@property (nonatomic, retain) NSString *currency;
@property (nonatomic, retain) NSMutableArray *items;

@end

#endif
