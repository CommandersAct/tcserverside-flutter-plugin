//
//  ServerSide.h
//  ServerSide
//
//  Created by Damien TERRIER on 03/02/14.
//  Copyright (c) 2014 TagCommander. All rights reserved.
//

#ifndef TagCommander_ServerSide_h
#define TagCommander_ServerSide_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import <TCCore/TCMacros.h>
#import <TCCore/ITCDynamicStore.h>
#import <TCCore/TCEventSender.h>
#import <TCCore/TCEventListener.h>
#import <TCCore/ETCConsentState.h>
#if __has_include(<TCServerSide_noIDFA/ETCConsentBehaviour.h>)
#import <TCServerSide_noIDFA/ETCConsentBehaviour.h>
#else
#import <TCServerSide/ETCConsentBehaviour.h>
#endif

@class TCServerSideInitialisation;
@class TCDynamicStore;
@class TCEvent;

@interface ServerSide : NSObject <ITCEventSenderDelegate, ITCEventListenerDelegate>

/**
* Designated initializer.
*
* @param siteID The TagCommander Side ID.
*/
- (id) initWithSiteID: (int) siteID andSourceKey: (NSString *) sourceKey;
- (id) initWithSiteID: (int) siteID andSourceKey: (NSString *) sourceKey andDefaultBehaviour: (ETCConsentBehaviour) behaviour;
- (id) initWithSiteID: (int) siteID andSourceKey: (NSString *) sourceKey notificationCenter: (NSNotificationCenter *) notificationCenter andDefaultBehaviour: (ETCConsentBehaviour) behaviour;

- (void) execute: (TCEvent *) event;
- (void) addPermanentData: (NSString *) key withValue: (NSString *) value;
- (NSString *) getPermanentData: (NSString *) key;
- (NSString *) removePermanentData: (NSString *) key;

- (void) enableRunningInBackground;

- (void) waitForUserAgent;
- (void) disableServerSide;
- (void) enableServerSide;
- (void) addAdvertisingIDs;

#pragma mark - public properties
@property (nonatomic, assign) int siteID;
@property (nonatomic, retain) NSString *url;
@property (nonatomic, assign) ETCConsentState serverSideState;
@property (nonatomic, assign) ETCConsentBehaviour defaultBehaviour;

@property (nonatomic, retain) TCDynamicStore *permanentStore;
@property (nonatomic, retain) TCEventSender *senderDelegate;
@property (nonatomic, retain) TCEventListener *listenerDelegate;

@property (nonatomic, strong) TCServerSideInitialisation *initialisation;

@end

#endif
