//
//  ElectronicsHandler.m
//  Patterns_15_ChainOfResponsibility
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "ElectronicsHandler.h"

@implementation ElectronicsHandler


-(void) handleItem:(BasicItem *)item
{
    if ([item isKindOfClass:[Electronics class]])
    {
        NSLog(@"Electronics found. Handling");
    }
    else
    {
        NSLog(@"Electronics not found. Handling using next handler");
        [self.nextHandler handleItem:item]; }
}

@end
