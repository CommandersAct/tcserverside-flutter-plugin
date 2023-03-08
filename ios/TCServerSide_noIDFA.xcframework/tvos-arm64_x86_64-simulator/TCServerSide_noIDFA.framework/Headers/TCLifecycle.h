//
//  TCLifecycle.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 03/03/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <TCCore/TCMacros.h>
#import <TCCore/TCSingleton.h>
#import <TCCore/TCAdditionalProperties.h>

@interface TCLifecycle : TCAdditionalProperties

SINGLETON_CLASS_H(TCLifecycle)

- (NSMutableDictionary *) getJsonObject;

@end
