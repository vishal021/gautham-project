//
//  StockHolding.h
//  gautham project
//
//  Created by gautham on 2014-07-20.
//  Copyright (c) 2013 gautham. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface StockHolding : NSObject

@property float purchaseSharePrice,currentSharePrice;
@property int numberOfShares ;
@property  NSString *compName;

-(float)costInDollars;
-(float)valueInDollars;


@end
