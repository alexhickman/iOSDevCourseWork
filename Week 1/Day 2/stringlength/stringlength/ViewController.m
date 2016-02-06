//
//  ViewController.m
//  stringlength
//
//  Created by Hickman on 9/29/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *firstString = @"aaa";
    NSString *secondString = @"abbbb";
 
    NSUInteger firstLength = [firstString length];
    NSUInteger secondLength = [secondString length];
    
    NSString *result = [self compareLengthOfFirstLength:firstLength toSecondLength:secondLength];
    
    NSLog(@"%@", result);

}

- (NSString *)compareLengthOfFirstLength:(NSUInteger)firstLength toSecondLength:(NSUInteger)secondLength
{
    long difference = 0;
    NSString *returnThis;
    
    if (firstLength > secondLength) {
        difference = firstLength - secondLength;
        returnThis = [NSString stringWithFormat:@"The first word is longer than the second word by %lu characters.", difference];
        return returnThis;
    }
    else if (firstLength < secondLength) {
        difference = secondLength - firstLength;
        returnThis = [NSString stringWithFormat:@"The second word is longer than the first word by %lu characters.", difference];
        return returnThis;
    }
    else {
        return @"The words are the same length.";
    }
    
}

@end
