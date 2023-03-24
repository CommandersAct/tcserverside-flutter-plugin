//
//  TCViewItem.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCViewItem_h
#define events_TCViewItem_h
#if __has_include(<TCServerSide_noIDFA/TCECommerceEvent.h>)
#import <TCServerSide_noIDFA/TCECommerceEvent.h>
#else
#import <TCServerSide/TCECommerceEvent.h>
#endif

@interface TCViewItem : TCECommerceEvent

@property (nonatomic, retain) NSDecimalNumber *revenue;

- (instancetype) initWithItems: (NSArray *) TCItems;

@end

#endif
