//
//  ToysHandler.m
//  Patterns_15_ChainOfResponsibility
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "ToysHandler.h"

@implementation ToysHandler

-(void) handleItem:(BasicItem *)item
{
    if ([item isKindOfClass:[Toy class]])
    {
        NSLog(@"Toy found. Handling");
    }
    else
    {
        NSLog(@"Toy not found. Handling using next handler");
        [self.nextHandler handleItem:item]; }
}

@end
