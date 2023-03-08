//
//  TCSelectItemEvent.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef events_TCSelectItemEvent_h
#define events_TCSelectItemEvent_h
#if __has_include(<TCServerSide_noIDFA/TCEvent.h>)
#import <TCServerSide_noIDFA/TCEvent.h>
#else
#import <TCServerSide/TCEvent.h>
#endif

@interface TCSelectItemEvent : TCEvent

@property (nonatomic, retain) NSString * _Nullable itemListName;
@property (nonatomic, retain) NSMutableArray * _Nullable items;

NS_ASSUME_NONNULL_BEGIN
- (instancetype) initWithItems: (NSArray * _Nullable) TCItems;
NS_ASSUME_NONNULL_END

@end

#endif
