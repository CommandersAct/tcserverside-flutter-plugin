//
//  TCSearchEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCSearchEvent_h
#define events_TCSearchEvent_h
#if __has_include(<TCServerSide_noIDFA/TCEvent.h>)
#import <TCServerSide_noIDFA/TCEvent.h>
#else
#import <TCServerSide/TCEvent.h>
#endif

@interface TCSearchEvent : TCEvent

@property (nonatomic, retain) NSString *searchTerm;

- (instancetype) initWithSearchTerm: (NSString *) searchTerm;

@end

#endif
