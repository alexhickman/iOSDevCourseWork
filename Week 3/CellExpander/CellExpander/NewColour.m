//
//  NewColour.m
//  CellExpander
//
//  Created by Hickman on 10/14/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "NewColour.h"

@implementation NewColour

- (instancetype)initColourWith:(NSString *)colourName and:(UIColor *)actualColour and:(NSString *)proverb

{
    self = [super init];
    if (self) {
        self.colourName = colourName;
        self.colourActual = actualColour;
        self.colourProverb = proverb;
    }
    return self;
}

+(NSMutableArray *)createColourArray
{
    NSMutableArray *colourArray = [[NSMutableArray alloc]init];
    
    NewColour *colourPurple = [[NewColour alloc]initColourWith:@"Purple" and:[UIColor purpleColor] and:@"Purple-nerple"];
    NewColour *colourBlue = [[NewColour alloc]initColourWith:@"Blue" and:[UIColor blueColor] and:@"Don't feel this way."];
    NewColour *colourYellow = [[NewColour alloc]initColourWith:@"Yellow" and:[UIColor yellowColor] and:@"Banana."];
    NewColour *colourOrange = [[NewColour alloc]initColourWith:@"Orange" and:[UIColor orangeColor] and:@"It is a colour and a fruit."];
    
    [colourArray addObject:colourPurple];
    [colourArray addObject:colourOrange];
    [colourArray addObject:colourBlue];
    [colourArray addObject:colourYellow];
    
    return colourArray;
}
@end
