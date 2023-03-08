//
//  TCGenerateLeadEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCGenerateLeadEvent_h
#define events_TCGenerateLeadEvent_h

#if __has_include(<TCServerSide_noIDFA/TCEvent.h>)
#import <TCServerSide_noIDFA/TCEvent.h>
#else
#import <TCServerSide/TCEvent.h>
#endif

@interface TCGenerateLeadEvent : TCEvent

@property (nonatomic, retain) NSDecimalNumber *value;
@property (nonatomic, retain) NSString *currency;
@property (nonatomic, retain) NSString *ID;

- (instancetype) initWithValue: (NSDecimalNumber *) value withCurrency: (NSString *) currency;

@end

#endif
