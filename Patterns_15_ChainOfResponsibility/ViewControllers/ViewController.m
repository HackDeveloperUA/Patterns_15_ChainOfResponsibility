//
//  ViewController.m
//  Patterns_15_ChainOfResponsibility
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "ViewController.h"

// Handlers
#import "BasicHandler.h"
#import "ToysHandler.h"
#import "ElectronicsHandler.h"
#import "OtherItemsHandler.h"


// Models
#import "BasicItem.h"
#import "Toy.h"
#import "Electronics.h"
#import "Trash.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Иниуиализация обработчиков
    BasicHandler *toysHandler        = [ToysHandler         new];
    BasicHandler *electronicsHandler = [ElectronicsHandler new];
    BasicHandler *otherItemHandler   = [OtherItemsHandler new];
    
    // Указываем ссылки на кого передадим обработку в случаем если объект нам не подходит
    electronicsHandler.nextHandler = otherItemHandler;
    toysHandler.nextHandler           = electronicsHandler;
    
    // Инициализация моделей вещей
    BasicItem *toy        = [Toy new];
    BasicItem *electronic = [Electronics new];
    BasicItem *trash      = [Trash new];
    
    // Для примера все будем передавать в самое начало, то есть в обработчик игрушек,  а он по цепочки другим обработчикам
    [toysHandler handleItem:toy];
    [toysHandler handleItem:electronic];
    [toysHandler handleItem:trash];
}



@end
