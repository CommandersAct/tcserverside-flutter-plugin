//
//  TCPageViewEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCPageViewEvent_h
#define events_TCPageViewEvent_h
#if __has_include(<TCServerSide_noIDFA/TCEvent.h>)
#import <TCServerSide_noIDFA/TCEvent.h>
#else
#import <TCServerSide/TCEvent.h>
#endif

@interface TCPageViewEvent : TCEvent

- (instancetype) initWithType: (NSString *) type;

@end

#endif
