//
//  TCEventParser.h
//  Pods
//
//  Created by Abdelhakim SAID on 14/02/2023.
//

#ifndef TCEventParser_h
#define TCEventParser_h
#if __has_include(<TCServerSide_noIDFA/ServerSide.h>)
#import <TCServerSide_noIDFA/ServerSide.h>
#import <TCServerSide_noIDFA/TCAddShippingInfoEvent.h>
#import <TCServerSide_noIDFA/TCPageViewEvent.h>
#import <TCServerSide_noIDFA/TCPurchaseEvent.h>
#import <TCServerSide_noIDFA/TCAddPaymentInfoEvent.h>
#import <TCServerSide_noIDFA/TCAddShippingInfoEvent.h>
#import <TCServerSide_noIDFA/TCAddToCartEvent.h>
#import <TCServerSide_noIDFA/TCAddToWishlistEvent.h>
#import <TCServerSide_noIDFA/TCBeginCheckoutEvent.h>
#import <TCServerSide_noIDFA/TCRefundEvent.h>
#import <TCServerSide_noIDFA/TCRemoveFromCartEvent.h>
#import <TCServerSide_noIDFA/TCViewCartEvent.h>
#import <TCServerSide_noIDFA/TCViewItem.h>
#import <TCServerSide_noIDFA/TCGenerateLeadEvent.h>
#import <TCServerSide_noIDFA/TCLoginEvent.h>
#import <TCServerSide_noIDFA/TCPageViewEvent.h>
#import <TCServerSide_noIDFA/TCSearchEvent.h>
#import <TCServerSide_noIDFA/TCSelectContentEvent.h>
#import <TCServerSide_noIDFA/TCSelectItemEvent.h>
#import <TCServerSide_noIDFA/TCSignUpEvent.h>
#import <TCServerSide_noIDFA/TCViewItemListEvent.h>
#import <TCServerSide_noIDFA/TCCustomEvent.h>
#import <TCServerSide_noIDFA/TCItem.h>
#import <TCServerSide_noIDFA/TCProduct.h>
#import <TCServerSide_noIDFA/TCDevice.h>
#else
#import <TCServerSide/ServerSide.h>
#import <TCServerSide/TCAddShippingInfoEvent.h>
#import <TCServerSide/TCPageViewEvent.h>
#import <TCServerSide/TCPurchaseEvent.h>
#import <TCServerSide/TCAddPaymentInfoEvent.h>
#import <TCServerSide/TCAddShippingInfoEvent.h>
#import <TCServerSide/TCAddToCartEvent.h>
#import <TCServerSide/TCAddToWishlistEvent.h>
#import <TCServerSide/TCBeginCheckoutEvent.h>
#import <TCServerSide/TCRefundEvent.h>
#import <TCServerSide/TCRemoveFromCartEvent.h>
#import <TCServerSide/TCViewCartEvent.h>
#import <TCServerSide/TCViewItem.h>
#import <TCServerSide/TCItem.h>
#import <TCServerSide/TCGenerateLeadEvent.h>
#import <TCServerSide/TCLoginEvent.h>
#import <TCServerSide/TCPageViewEvent.h>
#import <TCServerSide/TCSearchEvent.h>
#import <TCServerSide/TCSelectContentEvent.h>
#import <TCServerSide/TCSelectItemEvent.h>
#import <TCServerSide/TCSignUpEvent.h>
#import <TCServerSide/TCViewItemListEvent.h>
#import <TCServerSide/TCCustomEvent.h>
#import <TCServerSide/TCProduct.h>
#import <TCServerSide/TCDevice.h>
#endif

@interface TCEventParser : NSObject

@property (nonatomic, retain) NSArray* ECOMMERCE_EVENTS;

- (TCEvent *) parseEvent: (NSMutableDictionary *) eventDict withName: eventName;
- (void) setItems: (NSMutableDictionary *) eventDict forEvent: (TCECommerceEvent *) event;
- (void) setProduct: (NSMutableDictionary *) itemDict forTCItem: (TCItem *) item;

@end

#endif /* TCEventParser_h */
