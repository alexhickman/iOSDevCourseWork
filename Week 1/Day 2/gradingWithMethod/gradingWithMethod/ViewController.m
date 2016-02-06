//
//  ViewController.m
//  gradingWithMethod
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
    int score = 82;
    
    NSString *message = [self lettergradeFromPercentage:score];
    NSLog(@"With the score %i, your letter grade is %@.", score, message);
    
}

- (NSString *)lettergradeFromPercentage : (int)percentage
{
    if (percentage > 89)
    {
        return @"A";
    }
    if (percentage > 79)
    {
        return @"B";
    }
    if (percentage > 69)
    {
        return @"C";
    }
    if (percentage > 59)
    {
        return @"D";
    }
    else
    {
        return @"F";
    }
    
}


@end
