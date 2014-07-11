//
//  BNRContainer.m
//  RandomItems
//
//  Created by Benny Tan on 5/31/14.
//  Copyright (c) 2014 Benny Tan. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer
- (instancetype)initWithContainerName:(NSString *)name valueInDollars:(int)value
{
    self = [super initWithItemName:name valueInDollars:value serialNumber:@""];
    
    if (self) {
        _subItems = [[NSMutableArray alloc]init];
    }
    
    return self;
}

- (NSMutableArray *)subItems
{
    return _subItems;
}

- (int)totalValueDollars
{
    int valueOfSubItems = 0;
    for (BNRItem *item in self.subItems)
    {
        valueOfSubItems += item.valueInDollars;
    }
    return (valueOfSubItems + self.valueInDollars);
}

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc]initWithFormat:@"%@: Worth $%d\n%@",self.itemName,[self totalValueDollars], [self.subItems description]];
    return descriptionString;
}

@end
