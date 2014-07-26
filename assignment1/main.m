//
//  main.m
//  gautham project
//
//  Created by gautham on 2014-07-20.
//  Copyright (c) 2013 gautham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        // insert code here...
        
        
        StockHolding *st1 = [[StockHolding alloc ]init];
        StockHolding *st2 = [[StockHolding alloc ]init];
        StockHolding *st3 = [[StockHolding alloc ]init];
        
        [st1  setCurrentSharePrice:34.2];
        [st1  setPurchaseSharePrice:30.00];
        [st1  setNumberOfShares:10];
        [st1  setCompName:@"HCL"];
        
        
        [st2  setCurrentSharePrice:24.2];
        [st2  setPurchaseSharePrice:20.00];
        [st2  setNumberOfShares:10];
        [st2  setCompName:@"IBM"];
        
        
        [st3  setCurrentSharePrice:14.2];
        [st3  setPurchaseSharePrice:10.00];
        [st3  setNumberOfShares:10];
        [st3  setCompName:@"CTS"];
        
        
        NSMutableArray *stocks = [NSMutableArray arrayWithCapacity:1];
        
        [stocks addObject:st1];
        
        [stocks addObject:st2];
        
        [stocks addObject:st3];
        
        
        
        
        NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"compName" ascending:YES];
        
        [stocks sortUsingDescriptors:[NSArray arrayWithObject:sort]];
        
        
        
        for (int i=0; i<stocks.count; i++)
        {
            
            NSLog(@"Stock Details %i \n",i+1);
            NSLog(@"----------------------------------------\n");
            NSLog(@" Company name         : %@ \n",[stocks[i] compName]);
            NSLog(@" Purchase Share Price : %f \n",[stocks[i] purchaseSharePrice]);
            NSLog(@"Current Share Price   : %f \n",[stocks[i] currentSharePrice]);
            NSLog(@"Number of Shares      : %i \n",[stocks[i] numberOfShares]);
            NSLog(@"Cost in dollars       : %f \n",[stocks[i] costInDollars]);
            NSLog(@"Value  in  dollars    : %f \n",[stocks[i] valueInDollars]);
            NSLog(@"\n \n \n \n \n \n \n \n \n");
            
            
            
        }
        
        
    }
    return 0;
}



