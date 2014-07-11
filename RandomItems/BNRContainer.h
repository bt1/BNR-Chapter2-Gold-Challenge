//
//  BNRContainer.h
//  RandomItems
//
//  Created by Benny Tan on 5/31/14.
//  Copyright (c) 2014 Benny Tan. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *_subItems;
}

- (instancetype)initWithContainerName:(NSString *)name
                       valueInDollars:(int)value;

- (NSMutableArray *)subItems;

- (int)totalValueDollars;

@end
