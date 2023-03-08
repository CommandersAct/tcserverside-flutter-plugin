//
//  TCCustomEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 18/03/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCCustomEvent_h
#define events_TCCustomEvent_h
#if __has_include(<TCServerSide_noIDFA/TCEvent.h>)
#import <TCServerSide_noIDFA/TCEvent.h>
#else
#import <TCServerSide/TCEvent.h>
#endif

@interface TCCustomEvent : TCEvent

- (instancetype) initWithName: (NSString *) eventName;

@end

#endif
