//
//  TCEventPropertiesNames.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef schemes_TCEventPropertiesNames_h
#define schemes_TCEventPropertiesNames_h

#import <Foundation/Foundation.h>

@interface TCEventPropertiesNames : NSObject

    // Generic
extern NSString *const TC_ID;

    // All events
extern NSString *const TCE_EVENT;
extern NSString *const TCE_EVENTID;
extern NSString *const TCE_CONTEXT;
extern NSString *const TCE_USER;
extern NSString *const TC_EVENTTIMESTAMP;

    // Event specific
extern NSString *const TCE_PAYMENTMETHOD;
extern NSString *const TCE_COUPON;
extern NSString *const TCE_CURRENCY;
extern NSString *const TCE_REVENUE;
extern NSString *const TCE_VALUE;
extern NSString *const TCE_ITEMS;
extern NSString *const TCE_SHIPPINGTIER;
extern NSString *const TCE_SHIPPINGAMOUNT;
extern NSString *const TCE_TAXAMOUNT;
extern NSString *const TCE_METHOD;
extern NSString *const TCE_TYPE;
extern NSString *const TCE_NAME;
extern NSString *const TCE_TITLE;
extern NSString *const TCE_URL;
extern NSString *const TCE_PATH;
extern NSString *const TCE_REFERRER;
extern NSString *const TCE_STATUS;
extern NSString *const TCE_SEARCHTERM;
extern NSString *const TCE_CONTENTTYPE;
extern NSString *const TCE_ITEMID;
extern NSString *const TCE_ITEMLISTNAME;
extern NSString *const TCE_PAGENAME;
extern NSString *const TCE_PAGETYPE;

    // Item
extern NSString *const TCI_PRODUCT;
extern NSString *const TCI_VARIANT;
extern NSString *const TCI_LISTPOSITION;
extern NSString *const TCI_DISCOUNT;
extern NSString *const TCI_QUANTITY;
extern NSString *const TCI_AFFILIATION;

    // Product
extern NSString *const TCP_PRICE;
extern NSString *const TCP_BRAND;
extern NSString *const TCP_NAME;
extern NSString *const TCP_COLORS;
extern NSString *const TCP_SIZE;
extern NSString *const TCP_CATEGORY_N;
 
    // Device
extern NSString *const TCD_SDK_ID;
extern NSString *const TCD_DEVICE;
extern NSString *const TCD_IDFA;
extern NSString *const TCD_IDFV;
extern NSString *const TCD_ADTRACKING;
extern NSString *const TCD_USER_AGENT;
extern NSString *const TCD_MANUFACTURER;
extern NSString *const TCD_MODEL;
extern NSString *const TCD_NAME;
extern NSString *const TCD_TYPE;
extern NSString *const TCD_OS;
extern NSString *const TCD_OS_NAME;
extern NSString *const TCD_OS_VERSION;
extern NSString *const TCD_SCREEN;
extern NSString *const TCD_SCREEN_WIDTH;
extern NSString *const TCD_SCREEN_HEIGHT ;
extern NSString *const TCD_TIMEZONE;

    // Network
extern NSString *const TCD_NETWORK;

// Lifecycle
extern NSString *const TCL_LIFECYCLE;
extern NSString *const TCL_SESSION_ID;
extern NSString *const TCL_NEW_SESSION;
extern NSString *const TCL_SESSION_DURATION;
extern NSString *const TCL_CURRENT_SESSION;
extern NSString *const TCL_VISIT_NUMBER;
extern NSString *const TCL_CURRENT_VISIT;
extern NSString *const TCL_CUR_VER_FIRST_VISIT;
extern NSString *const TCL_SESSION_NUMBER;
extern NSString *const TCL_FIRST_VISIT;
extern NSString *const TCL_LAST_VISIT;
extern NSString *const TCL_LAST_CALL;
extern NSString *const TCL_LAST_SESSION_START;
extern NSString *const TCL_LAST_SESSION_LAST_HIT;
extern NSString *const TCL_FOREGROUND_TRANSITIONS;
extern NSString *const TCL_FOREGROUND_TIME;
extern NSString *const TCL_BACKGROUND_TIME;
extern NSString *const TCL_FIRST_EXECUTE;
extern NSString *const TCL_IS_FIRST_VISIT;

    // App
extern NSString *const TCA_APP;
extern NSString *const TCA_NAME;
extern NSString *const TCA_VERSION;
extern NSString *const TCA_BUILD;
extern NSString *const TCA_NAMESPACE;
extern NSString *const TCA_COREVERSION;
extern NSString *const TCA_SERVERSIDEVERSION;

@end

#endif
