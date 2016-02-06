//
//  ViewController.m
//  labelStringsCompare
//
//  Created by Hickman on 9/30/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *firstString = @"1567";
    NSString *secondString = @"1234567";
    
    NSUInteger firstStringLength = [firstString length];
    NSUInteger secondStringLength = [secondString length];
    [self compareString:firstStringLength toThisString:secondStringLength];
    self.labelFirstString.text = firstString;
    self.labelSecondString.text = secondString;
    
}

- (void)compareString:(NSUInteger)firstStringLength toThisString:(NSUInteger)secondStringLength
{
    if (firstStringLength > 5) {
        self.labelCompareToFive.text = @"The first string is greater than 5 characters.";
    }
    if (firstStringLength < 5) {
        self.labelCompareToFive.text = @"The first string is less than 5 characters.";
    }
    if (firstStringLength == 5) {
        self.labelCompareToFive.text = @"The first string have 5 characters.";
    }
    
    NSUInteger difference = 0;
    
    if (firstStringLength > secondStringLength) {
        difference = firstStringLength - secondStringLength;
        self.labelCompareStrings.text = [NSString stringWithFormat:@"The first string is %lu characters larger.", difference];
        self.labelCompareStrings.textColor = [UIColor redColor];
        return;
        
    }
    if (secondStringLength > firstStringLength) {
        NSLog(@"%lu, %lu", secondStringLength, firstStringLength);
        difference = (secondStringLength - firstStringLength);
        NSLog(@"%lu", difference);
        self.labelCompareStrings.text = [NSString stringWithFormat:@"The second string is %lu characters larger.", difference];
        self.labelCompareStrings.textColor = [UIColor greenColor];
        return;
    }
    else {
        self.labelCompareStrings.text = @"They are the same length!";
    }
    
}

@end
