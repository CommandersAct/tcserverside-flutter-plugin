//
//  TCNetwork.h
//  TCCore
//
//  Created by Abdelhakim SAID on 04/02/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <TCCore/TCSingleton.h>
#import <TCCore/TCMacros.h>
#import <TCCore/TCAdditionalProperties.h>
#import "TCCoreConstants.h"
#import "TCUtils.h"

@interface TCNetwork : TCAdditionalProperties

@property BOOL bluetooth;
@property (retain) NSString* carrier;
@property BOOL cellular;
@property BOOL wifi;


SINGLETON_CLASS_H(TCNetwork)
- (NSDictionary *) getJsonObject;

@end
