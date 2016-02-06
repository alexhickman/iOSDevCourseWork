//
//  Color.m
//  SeguesAndColors
//
//  Created by Tatiana Jamison on 10/15/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "Color.h"

@implementation Color

+(NSArray *)getArrayOfColors
{
    NSArray *colorArray = [NSArray arrayWithObjects:
                           [[Color alloc] initWithName:@"red" andColor:[UIColor redColor]],
                           [[Color alloc] initWithName:@"purple" andColor:[UIColor purpleColor]],
                           [[Color alloc] initWithName:@"green" andColor:[UIColor greenColor]],
                           [[Color alloc] initWithName:@"orange" andColor:[UIColor orangeColor]],
                           [[Color alloc] initWithName:@"gray" andColor:[UIColor grayColor]],
                           [[Color alloc] initWithName:@"red" andColor:[UIColor redColor]],
                           [[Color alloc] initWithName:@"purple" andColor:[UIColor purpleColor]],
                           [[Color alloc] initWithName:@"green" andColor:[UIColor greenColor]],
                           [[Color alloc] initWithName:@"orange" andColor:[UIColor orangeColor]],
                           [[Color alloc] initWithName:@"gray" andColor:[UIColor grayColor]],
                           [[Color alloc] initWithName:@"red" andColor:[UIColor redColor]],
                           [[Color alloc] initWithName:@"purple" andColor:[UIColor purpleColor]],
                           [[Color alloc] initWithName:@"green" andColor:[UIColor greenColor]],
                           [[Color alloc] initWithName:@"orange" andColor:[UIColor orangeColor]],
                           [[Color alloc] initWithName:@"gray" andColor:[UIColor grayColor]],
                           [[Color alloc] initWithName:@"red" andColor:[UIColor redColor]],
                           [[Color alloc] initWithName:@"purple" andColor:[UIColor purpleColor]],
                           [[Color alloc] initWithName:@"green" andColor:[UIColor greenColor]],
                           [[Color alloc] initWithName:@"orange" andColor:[UIColor orangeColor]],
                           [[Color alloc] initWithName:@"gray" andColor:[UIColor grayColor]],
                           [[Color alloc] initWithName:@"red" andColor:[UIColor redColor]],
                           [[Color alloc] initWithName:@"purple" andColor:[UIColor purpleColor]],
                           [[Color alloc] initWithName:@"green" andColor:[UIColor greenColor]],
                           [[Color alloc] initWithName:@"orange" andColor:[UIColor orangeColor]],
                           [[Color alloc] initWithName:@"gray" andColor:[UIColor grayColor]],
                           nil];
    return colorArray;
}

- (instancetype)initWithName:(NSString *)nameToSet andColor:(UIColor *)colorToSet
{
    self = [super init];
    if (self) {
        self.customColor = colorToSet;
        self.customName = nameToSet;
    }
    return self;
}

@end
