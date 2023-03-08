//
// Created by Damien TERRIER on 05/06/14.
// Copyright (c) 2014 TagCommander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface TCUtils : NSObject
+ (BOOL) matchDynamicVariableRegexp: (NSString *) dynamicVariable;
+ (BOOL) matchAppleLocaleRegexp: (NSString *) appleLocale;
+ (BOOL) matchIPRegexp: (NSString *) ip;
+ (BOOL) matchSoftwareVersionRegexp: (NSString *) versionString;
+ (BOOL) matchScreenResolutionRegexp: (NSString *) screenResolution;
+ (BOOL) matchUUIDRegexp: (NSString *) UUIDString;
+ (BOOL) isNumeric: (NSString *) numericalString;
+ (BOOL) doesString: (NSString *) string matchRegexp: (NSString *) expr;
+ (int) numberFromNSString: (NSString *) number;
+ (NSNumber *) nsNumberFromString: (NSString *) number;
+ (NSString *) jsonDictionaryToString: (NSDictionary*) dict;
+ (void) setBool: (BOOL) value forKey: (NSString *) key onDict: (NSMutableDictionary *) dict;
+ (void) setJson: (NSDictionary *) json forKey: (NSString *) key onDict: (NSMutableDictionary *) dict;
+ (void) setString: (NSString *) value forKey: (NSString *) key onDict: (NSMutableDictionary *) dict;
+ (void) setFloat: (NSDecimalNumber *) value forKey: (NSString *) key onDict: (NSMutableDictionary *) dict;
+ (void) setFloatFromString: (NSString *) value forKey: (NSString *) key onDict: (NSMutableDictionary *) dict;
+ (void) setArray: (NSArray *) items forKey: (NSString *) key onDict: (NSMutableDictionary *) dict;
+ (void) setString: (NSString *) value forKey: (NSString *) key onDict: (NSMutableDictionary *) dict withHash: (NSString *) algorithm;
@end

@interface NSString (TagCommander)
- (NSString *) TCURLEncodedString;
- (BOOL) testString;
- (BOOL) isTrueValue;
- (NSString *) sha256Stirng;
- (NSString *) MD5String;
- (NSMutableDictionary *) parseToJson;
- (NSString *) addToStatString: (NSString *) toAdd;
@end

@interface NSMutableDictionary (TagCommander)
- (NSMutableDictionary *) getAcceptedCategoriesNoPrefix;
@end
