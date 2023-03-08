//
//  TCItem.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 27/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef schemes_TCItem_h
#define schemes_TCItem_h

#import <Foundation/Foundation.h>
#import <TCCore/TCAdditionalProperties.h>

@class TCProduct;

@interface TCItem : TCAdditionalProperties

@property (nonatomic, retain) NSString* ID;
@property (nonatomic, retain) TCProduct* product;
@property (nonatomic, retain) NSString* variant;
@property (nonatomic, retain) NSDecimalNumber* list_position;
@property (nonatomic, retain) NSDecimalNumber* discount;
@property (nonatomic, retain) NSDecimalNumber* quantity;
@property (nonatomic, retain) NSString* coupon;
@property (nonatomic, retain) NSString* affiliation;

- (instancetype) initWithItemId: (NSString *) itemID withProduct: (TCProduct *) product withQuantity: (int) quantity;
- (NSDictionary *) getJsonObject;
- (BOOL) verifyItem;

@end

#endif
