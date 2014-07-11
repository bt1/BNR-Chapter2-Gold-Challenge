//
//  main.m
//  RandomItems
//
//  Created by Benny Tan on 5/25/14.
//  Copyright (c) 2014 Benny Tan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Creates a new mutable array object and stores its address in items variable
        //NSMutableArray *items = [[NSMutableArray alloc] init];
        
        //Sends message addObject: to NSMutableArray pointed to by the
        //variable items, passing a string each time
        /*[items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        //Sends another message insertObject: to NSMutableArray pointed to by the
        //variable items
        [items insertObject:@"Zero" atIndex:0];
        
        for (int i; i< [items count]; i++) {
            NSString *item = [items objectAtIndex:i];
            NSLog(@"%@",item);
        }
        
        BNRItem *item = [[BNRItem alloc] init];
        
        item.itemName = @"Stickers";
        
        item.serialNumber = @"123ABC";
        item.valueInDollars = 5;
        NSLog(@"%@",item);
        
        BNRItem *item = [[BNRItem alloc]initWithItemName:@"Stickers" valueInDollars:10 serialNumber:@"ABC123"];
        NSLog(@"%@", item);
        for (int i=0; i<10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (BNRItem *item in items)
        {
            NSLog(@"%@", item);
        }
        */
        //Bronze Challenge: Create a bug in program by asking for the 11th item in the array
        /*
        NSString *eleventhItem = items[10];
        NSLog(@"%=%@",eleventhItem);
        */
        
        //Silver Challenge: Create another initializer method for BNR Class that takes an instance of NSString that identifies
        //the itemName and an instance of NSString that identifies the serialNumber
        //BNRItem *silverChallenge = [[BNRItem alloc]initwithItemName:@"silver" serialNumber:@"Silver123"];
        //NSLog(@"%@",silverChallenge);
        
        //Gold Challenge
        NSMutableArray *items = [[NSMutableArray alloc]init];
        for (int i=0; i<10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        NSLog(@"%@",items);
        
        BNRContainer *container = [[BNRContainer alloc]initWithContainerName:@"My Continer" valueInDollars:50];
        for (BNRItem *item in items)
        {
            [container.subItems  addObject:item];
        }
        NSLog(@"%@",container);
        
        
    }
    return 0;
}

