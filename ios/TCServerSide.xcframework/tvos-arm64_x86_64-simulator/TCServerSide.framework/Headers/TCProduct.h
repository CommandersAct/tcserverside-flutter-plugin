//
//  TCProduct.h
//  TCServerSide
//
//  Created by Abdelhakim SAID on 20/01/2022.
//  Copyright © 2022 TagCommander. All rights reserved.
//

#ifndef schemes_TCProduct_h
#define schemes_TCProduct_h

#import <Foundation/Foundation.h>
#import <TCCore/TCAdditionalProperties.h>

@interface TCProduct : TCAdditionalProperties

@property (nonatomic, retain) NSString *ID;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSDecimalNumber *price;
@property (nonatomic, retain) NSString *currency;
@property (nonatomic, retain) NSMutableArray *categories;
@property (nonatomic, retain) NSString *brand;
@property (nonatomic, retain) NSMutableArray *colors;
@property (nonatomic, retain) NSString *size;

- (instancetype) initWithProductId: (NSString *) productID withName: (NSString *) name withPrice: (NSDecimalNumber *) price;
- (BOOL) verifyProduct;
- (NSDictionary *) getJsonObject;

@end

#endif
