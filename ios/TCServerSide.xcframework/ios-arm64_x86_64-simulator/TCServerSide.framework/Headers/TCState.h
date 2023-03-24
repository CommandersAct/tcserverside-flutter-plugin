//
//  TCState.h
//  TagCommander
//
//  Created by Jean-Julien ZEIL on 10/02/14.
//  Copyright (c) 2014 TagCommander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <TCCore/TCSingleton.h>
#import <TCCore/ITCEventSenderDelegate.h>
#import <TCCore/TCMacros.h>
#import <TCCore/TCLog.h>

@class TCEventSender;
@class UIApplication;

@interface TCState : TCSingleton <ITCEventSenderDelegate>

SINGLETON_CLASS_H(TCState)

#pragma mark - Date & Time Methods
- (NSDate *) date;

#pragma mark - Unit Tests Access
- (id) reinit;

@property (nonatomic, retain) TCEventSender *senderDelegate;

@end
