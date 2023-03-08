//
//  TCApp.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef schemes_TCApp_h
#define schemes_TCApp_h

#import <Foundation/Foundation.h>
#import <TCCore/TCSingleton.h>
#import <TCCore/TCAdditionalProperties.h>
#import <TCCore/TCMacros.h>

@interface TCApp : TCAdditionalProperties

SINGLETON_CLASS_H(TCApp)

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *version;
@property (nonatomic, retain) NSString *build;
@property (nonatomic, retain) NSString *nameSpace;
@property (nonatomic, retain) NSString *coreVersion;
@property (nonatomic, retain) NSString *serverSideVersion;

- (NSDictionary *) getJsonObject;

@end

#endif
