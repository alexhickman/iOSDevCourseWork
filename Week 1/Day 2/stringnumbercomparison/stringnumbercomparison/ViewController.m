//
//  ViewController.m
//  stringnumbercomparison
//
//  Created by Hickman on 9/29/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // NSString *stringone = @"g50d0d";
    NSString *stringone = @"240";
    NSString *stringtwo = @"240";
    
    NSString *result = [self convertStringsToNumbersAndCompare:stringone toThisString:stringtwo];
    NSLog(@"%@", result);
    
}

- (NSString *)convertStringsToNumbersAndCompare:(NSString *)firstString toThisString:(NSString *)secondString
{
    NSString *message = @"Strings have equal numberical values, remember non-number characters end the conversion.";
    int first = [firstString intValue];
    NSLog(@"The first string is %i.", first);
    int second = [secondString intValue];
    NSLog(@"The second string is %i.", second);
    
    if (first > second)
    {
        message = @"The first string has a higher number value.";
    }
    if (second > first)
    {
        message = @"The second string has a higher number value.";
    }
    
    return message;
    
}

@end
