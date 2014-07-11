//
//  BNRItem.h
//  RandomItems
//
//  Created by Benny Tan on 5/26/14.
//  Copyright (c) 2014 Benny Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
}

+ (instancetype)randomItem;

- (instancetype)initWithItemName: (NSString *)name
                  valueInDollars: (int)value
                    serialNumber: (NSString *)sNumber;

- (instancetype)initWithItemName: (NSString *)name;

- (instancetype)initwithItemName: (NSString *)name
                    serialNumber: (NSString *)sNumber;


- (void) setItemName: (NSString *)str;
- (NSString *)itemName;

- (void) setSerialNumber: (NSString *)str;
- (NSString *)serialNumber;

- (void) setValueInDollars: (int)v;
- (int) valueInDollars;

- (NSDate *) dateCreated;

@end
