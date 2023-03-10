//
//  TCConstants.h
//  TagCommander
//
//  Created by Jean-Julien ZEIL on 10/02/14.
//  Copyright (c) 2014 TagCommander. All rights reserved.
//

#ifndef TagCommander_TCCoreConstants_h
#define TagCommander_TCCoreConstants_h

#import <Foundation/Foundation.h>
#import "CoreGenerated.h"

#define TC_UNIT_TESTS
#define TC_FUNCTIONAL_TESTS


#pragma mark - misc
extern NSString *const kTCFileOfflineHits;
extern NSTimeInterval const kTCNetworkDefaultTimeout;
extern NSURLRequestCachePolicy kTCNetworkDefaultRequestCachePolicy;
extern unsigned long long const kTCVisitDurationDefaultValue;
extern NSString *const kTCFilePrivateDocuments;
extern NSString *const kTCConfigurationFilesPrefix;
extern NSString *const kTCConfigurationFilesLastUpdated;

#pragma mark HTTP Hit Notifications
extern NSString *const kTCNotification_HitSent;

#pragma mark - Message
extern NSString *const kTCErrorMessageInvalidURL;

#pragma mark HTTP Request Notifications
extern NSString *const kTCNotification_HTTPRequest;
extern NSString *const kTCNotification_HTTPRequestSent;
extern NSString *const kTCNotification_HTTPRequestError;
extern NSString *const kTCNotification_HTTPResponse;
extern NSString *const kTCNotification_HTTPPartnerRequest;
extern NSString *const kTCNotification_HTTPPartnerResponse;
extern NSString *const kTCNotification_SegmentRequest;
extern NSString *const kTCNotification_SegmentResponse;
extern NSString *const kTCNotification_ConfigurationRequest;
extern NSString *const kTCNotification_DisclosuresRequest;
extern NSString *const kTCNotification_ConfigurationResponse;
extern NSString *const kTCNotification_DisclosuresResponse;
extern NSString *const kTCNotification_VendorListRequest;
extern NSString *const kTCNotification_VendorListResponse;

#pragma mark Internet Notifications
extern NSString *const kTCNotification_InternetUp;
extern NSString *const kTCNotification_InternetDown;
extern NSString *const kTCNotification_InternetChanged;

#pragma mark User Agent Notifications
extern NSString *const kTCNotification_UserAgentAvailable;

#pragma mark Background / Foreground notifications
extern NSString *const kTCNotification_OnBackground;
extern NSString *const kTCNotification_OnForeground;

#pragma mark Misc Notifications
extern NSString *const kTCNotification_Unknown;
extern NSString *const kTCNotification_StoppingTheServerSide;
extern NSString *const kTCNotification_EnablingTheServerSide;
extern NSString *const kTCNotification_ConfigurationChanged;

#pragma mark - notification userInfo
extern NSString *const kTCUserInfo_DataKey;
extern NSString *const kTCUserInfo_URLKey;
extern NSString *const kTCUserInfo_POSTData;
extern NSString *const kTCUserInfo_ResponseKey;
extern NSString *const kTCUserInfo_ErrorKey;
extern NSString *const kTCUserInfo_RequestType;
extern NSString *const kTCUserInfo_ContentKey;
extern NSString *const kTCUserInfo_RequestID;

#pragma mark - predefined dynamic variables
extern NSString *const kTCUserDefaultsKey_UniqueID;
extern NSString *const kTCPredefinedVariable_UniqueID;

extern NSString *const kTCPredefinedVariable_IDFA;
extern NSString *const kTCPredefinedVariable_IDFV;
extern NSString *const kTCPredefinedVariable_isTrackingEnabled;
extern NSString *const kTCPredefinedVariable_LimitUserTrackingEnabled;

extern NSString *const kTCPredefinedVariable_SDKID;
extern NSString *const kTCPredefinedVariable_UserAgent;

#pragma mark - Regexps
extern NSString *const kTCRegexpDynamicVariable;

extern NSString *const kTCRegexpIP;
extern NSString *const kTCRegexpAppleLocale;
extern NSString *const kTCRegexpScreenResolution;
extern NSString *const kTCRegexpSoftwareVersion;
extern NSString *const kTCRegexpUUID;

extern NSString *const kTCCategoryPrefix;
extern NSString *const kTCVendorPrefix;
extern NSString *const kTCGoogleVendorPrefix;
extern NSString *const kTCFeaturePrefix;

extern NSString *const TCN_BLUETOOTH;
extern NSString *const TCN_CARRIER;
extern NSString *const TCN_CELLULAR;
extern NSString *const TCN_WIFI;

#pragma mark - TCUser
extern NSString *const TCU_ID;
extern NSString *const TCU_CONSENTCATEGORIES;
extern NSString *const TCU_PHONE;
extern NSString *const TCU_EMAIL;
extern NSString *const TCU_CONSENTVENDORS;
extern NSString *const TCU_EXTERNALCONSENT;
extern NSString *const TCU_FIRSTNAME;
extern NSString *const TCU_LASTNAME;
extern NSString *const TCU_BIRTHDAY;
extern NSString *const TCU_CITY;
extern NSString *const TCU_STATE;
extern NSString *const TCU_ZIPCODE;
extern NSString *const TCU_COUNTRY;
extern NSString *const TCU_ANONYMOUS_ID;
extern NSString *const TC_WAITING_FOR_CONSENT;
extern NSString *const STATIC_IDFA;

#endif // !#ifndef TagCommander_TCCoreConstants_h
