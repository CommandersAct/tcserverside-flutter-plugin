//
//  TCDynamicStore.h
//  TagCommander
//
//  Created by Jean-Julien ZEIL on 10/02/14.
//  Copyright (c) 2014 TagCommander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITCDynamicStore.h"

@interface TCDynamicStore : NSObject<ITCDynamicStore, NSCoding>

@property (nonatomic, retain) NSMutableDictionary *dynamicStore;
@property (nonatomic, retain) NSMutableDictionary *jsonStore;
@property (nonatomic, retain) NSMutableArray *orderedKeys;
@property (nonatomic, retain) NSMutableArray *orderedJsonKeys;


/**
 * Remove a json value in a TCDynamicStore.
 * Does nothing if the variable is not is the store.
 * @param jsonKey the variable to be removed.
 * @return the value of the removed json.
 */
- (NSDictionary *) removeJsonData: (NSString *) jsonKey;

/**
 * Get the json dictionary value.
 * @param key The key.
 * @return the dict value.
 */
- (NSDictionary *) getJsonData: (NSString *) key;

/**
 * Simplified implementation of adding a json dictionary in a TCDynamicStore
 * @param key The key for the store.
 * @param jsonDict the value of json in form of dictionary
 */
- (void) addJsonData: (NSDictionary*) jsonDict forKey: (NSString*) key;

/**
 * Store cleaning.
 */
- (void) clearData;

@end
