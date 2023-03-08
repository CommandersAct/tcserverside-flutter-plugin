//
//  TCUser.h
//  TCCore
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef schemes_TCUser_h
#define schemes_TCUser_h

#import <TCCore/TCSingleton.h>
#import <Foundation/Foundation.h>
#import <TCCore/TCMacros.h>
#import <TCCore/TCAdditionalProperties.h>

@interface TCUser : TCAdditionalProperties

SINGLETON_CLASS_H(TCUser)

@property (nonatomic, retain) NSString *ID;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *email_md5;
@property (nonatomic, retain) NSString *email_sha256;
@property (nonatomic, retain) NSString *consentID;
@property (nonatomic, retain) NSString *phoneNumber;
@property (nonatomic, retain) NSString *firstName;
@property (nonatomic, retain) NSString *lastName;
@property (nonatomic, retain) NSString *gender;
@property (nonatomic, retain) NSString *birthdate;
@property (nonatomic, retain) NSString *city;
@property (nonatomic, retain) NSString *state;
@property (nonatomic, retain) NSString *zipcode;
@property (nonatomic, retain) NSString *country;
@property (nonatomic, retain) NSString *anonymous_id;


@property (nonatomic, retain) NSMutableDictionary *consent_categories;
@property (nonatomic, retain) NSMutableDictionary *consent_vendors;
@property (nonatomic, retain) NSMutableDictionary *external_consent;

- (BOOL) verifyUser;
- (void) setConsentCategories: (NSDictionary *) consent;
- (void) setConsentVendors: (NSDictionary *) consent;
- (void) setExternalConsent: (NSDictionary *) ext;
- (NSDictionary *) getJsonObject;
- (void) resetConsent;
- (void) setFullConsent: (NSDictionary *) consent;

@end

#endif
