//
//  BasicHandler.h
//  Patterns_15_ChainOfResponsibility
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

// Models
#import "BasicItem.h"

@interface BasicHandler : NSObject

@property (nonatomic, strong) BasicHandler *nextHandler;

-(void) handleItem:(BasicItem *) item;

@end
