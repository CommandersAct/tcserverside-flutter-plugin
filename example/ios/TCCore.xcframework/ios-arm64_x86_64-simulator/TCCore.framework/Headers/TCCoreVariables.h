//
// Created by JeanJulien on 03/11/2016.
// Copyright (c) 2016 TagCommander. All rights reserved.
//

#import <Foundation/Foundation.h>

#if TARGET_OS_IOS
#import <WebKit/WebKit.h>
#endif

#import "ITCDynamicStore.h"
#import "TCSingleton.h"
#import "TCMacros.h"
#import "ITCEventSenderDelegate.h"
#import "TCEventSender.h"

@interface TCCoreVariables : TCSingleton <ITCDynamicStore, ITCEventSenderDelegate>

SINGLETON_CLASS_H(TCCoreVariables)

- (id) reinit;

#if TARGET_OS_IOS
- (void) initUserAgentWithProcessPool: (WKProcessPool *) pool;
#endif

- (unsigned long long) now;
- (unsigned long long) nowMs;
- (NSString *) nowString;
- (NSString *) nowMsString;
- (void) setIDFV;

@property (nonatomic, retain) TCDynamicStore *dynamicStore;
@property (nonatomic, assign) bool enableSDKInBG;

#if TARGET_OS_IOS
@property (nonatomic, retain) WKProcessPool *pool;
@property (nonatomic, retain) WKWebView *uaWebView;
#endif

@property (nonatomic, retain) TCEventSender *senderDelegate;

@end
