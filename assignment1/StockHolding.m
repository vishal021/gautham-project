//
//  StockHolding.m
// gautham project
//
//  Created by gautham on 2014-07-20..
//  Copyright (c) 2013 gautham. All rights reserved.
//

#import "StockHolding.h"


@implementation StockHolding

@synthesize purchaseSharePrice;
@synthesize currentSharePrice;
@synthesize numberOfShares;

- (float)costInDollars
{
    return purchaseSharePrice * numberOfShares;
}

- (float)valueInDollars
{
    return currentSharePrice * numberOfShares;
}

@end
