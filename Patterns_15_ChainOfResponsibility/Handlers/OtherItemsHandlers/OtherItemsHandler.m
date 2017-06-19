//
//  OtherItemsHandler.m
//  Patterns_15_ChainOfResponsibility
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "OtherItemsHandler.h"

@implementation OtherItemsHandler

-(void) handleItem:(BasicItem *)item
{
    NSLog(@"Found undefined item. Destroying");
}

@end
