//
//  ViewController.m
//  checkStringLengths
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
    NSString *firstString = @"adgf";
    NSString *secondString = @"asdfg";
    
    NSUInteger firstLength = [firstString length];
    NSUInteger secondLength = [secondString length];
    
    /*
    if (firstLength == 5) {
        NSLog(@"First string is equal to 5.");
    }
    if (secondLength < 5) {
        NSLog(@"Second string is less than 5.")
    }
    */
    
    NSString *result = [self compareStringLength:firstLength toSecondStringLength:secondLength];
    NSLog(@"%@", result);
    
}

- (NSString *)compareStringLength:(NSUInteger)firstStringLength toSecondStringLength:(NSUInteger)secondStringLength
{
    long difference = 0;
    NSString *returnWith;
    if (firstStringLength > secondStringLength) {
        difference = firstStringLength - secondStringLength;
        returnWith = [NSString stringWithFormat:@"The first string is larger by %lu characters", difference];
        return returnWith;
    }
    if (secondStringLength > firstStringLength) {
        difference = secondStringLength - firstStringLength;
        returnWith = [NSString stringWithFormat:@"The second string is larger by %lu characters", difference];
        return returnWith;
    }
    else{
        returnWith = @"They are the same length!";
        return returnWith;
    }
    
}

@end
