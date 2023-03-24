//
//  TCConstants.h
//  TagCommander
//
//  Created by Jean-Julien ZEIL on 10/02/14.
//  Copyright (c) 2014 TagCommander. All rights reserved.
//

#ifndef TagCommander_TCServerSideConstants_h
#define TagCommander_TCServerSideConstants_h

#import <Foundation/Foundation.h>

extern unsigned long long const kTCVisitDurationDefaultValue;

extern NSString *const kTCManufacturerName;

#pragma mark ComScore
extern NSString *const kTCTimeSinceLastMeasurement;
extern NSString *const kTCSessionStartTimestamp;
extern NSString *const kTCLastSessionStartTimestamp;
extern NSString *const kTCExitTimestamp;
extern NSString *const kTCUsageDuration;
extern NSString *const kTCLastForegroundTime;
extern NSString *const kTCLastBackgroundTime;

#pragma mark HTTP Hit Notifications
extern NSString *const kTCNotification_HitSent;

#pragma mark - predefined dynamic variables

extern NSString *const kTCPredefinedVariable_Language;
extern NSString *const kTCPredefinedVariable_SystemName;
extern NSString *const kTCPredefinedVariable_SystemVersion;
extern NSString *const kTCPredefinedVariable_Model;
extern NSString *const kTCPredefinedVariable_Device;

extern NSString *const kTCPredefinedVariable_ScreenResolution;
extern NSString *const kTCPredefinedVariable_Charset;
extern NSString *const kTCPredefinedVariable_CurrencyCode;
extern NSString *const kTCPredefinedVariable_CurrencySymbol;
extern NSString *const kTCPredefinedVariable_ApplicationVersion;
extern NSString *const kTCPredefinedVariable_ApplicationPreviousVersion;
extern NSString *const kTCPredefinedVariable_ApplicationBuild;
extern NSString *const kTCPredefinedVariable_TagCommanderVersion;
extern NSString *const kTCPredefinedVariable_Manufacturer;

extern NSString *const kTCPredefinedVariable_JailBroken;
extern NSString *const kTCPredefinedVariable_ColdStarts;
extern NSString *const kTCPredefinedVariable_ForegroundTransitions;
extern NSString *const kTCPredefinedVariable_ForegroundTime;
extern NSString *const kTCPredefinedVariable_DeltaForegroundTime;
extern NSString *const kTCPredefinedVariable_BackgroundTime;
extern NSString *const kTCPredefinedVariable_DeltaBackgroundTime;
extern NSString *const kTCPredefinedVariable_BackgroundUxTime;
extern NSString *const kTCPredefinedVariable_DeltaBackgroundUxTime;

extern NSString *const kTCPredefinedVariable_CurrentCallMs;
extern NSString *const kTCPredefinedVariable_LastCallMs;
extern NSString *const kTCPredefinedVariable_LastSessionStartMs;
extern NSString *const kTCPredefinedVariable_LastSessionLastHitMs;

extern NSString *const kTCPredefinedVariable_Longitude;
extern NSString *const kTCPredefinedVariable_Latitude;

extern NSString *const kTCPredefinedVariable_BundleID;
extern NSString *const kTCPredefinedVariable_ApplicationName;
extern NSString *const kTCPredefinedVariable_RuntimeName;
extern NSString *const kTCPredefinedVariable_ScreenHeight;
extern NSString *const kTCPredefinedVariable_ScreenWidth;

extern NSString *const kTCUserDefaultsKey_UniqueID;

extern NSString *const kTCPredefinedVariable_FirstVisitMs;
extern NSString *const kTCPredefinedVariable_LastVisitMs;
extern NSString *const kTCPredefinedVariable_CurrentVisitMs;
extern NSString *const kTCPredefinedVariable_CurrentSessionMs;
extern NSString *const kTCPredefinedVariable_SessionDurationMs;
extern NSString *const kTCPredefinedVariable_CurVersionFirstVisitMs;

extern NSString *const kTCPredefinedVariable_NumberVisits;
extern NSString *const kTCPredefinedVariable_NumberSessions;
extern NSString *const kTCPredefinedVariable_IsFirstVisit;
extern NSString *const kTCPredefinedVariable_SessionID;

extern NSString *const kTCPredefinedVariable_IsNewSession;
extern NSString *const kTCPredefinedVariable_UserSessionDurationMs;
extern NSString *const kTCPredefinedVariable_UsageSessionDurationMs;
extern NSString *const kTCPredefinedVariable_AccumulatedBackgroundTime;
extern NSString *const kTCPredefinedVariable_TimeSinceLastExit;
extern NSString *const kTCPredefinedVariable_AccumulatedForegroundTimeWithoutMeasurement;
extern NSString *const kTCPredefinedVariable_LastForegroundTimeWithoutMeasurement;

extern NSString *const kTCPredefinedVariable_EmptyVariableRemoveEqual;
extern NSString *const kTCPredefinedVariable_FirstExecute;

#pragma mark - Timestamp formats
extern NSString *const kTCDateFirstVisitFormat;
extern NSString *const kTCDateLastVisitFormat;
extern NSString *const kTCDateCurrentVisitFormat;
extern NSString *const kTCNumberColdStarts;
extern NSString *const kTCNumberSessions;
extern NSString *const kTCLastPID;

#endif // #ifndef TagCommander_TCServerSideConstants_h
