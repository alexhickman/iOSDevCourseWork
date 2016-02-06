//
//  ViewController.m
//  labelStrings
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
    
    
    NSString *stringOne = @"12345";
    NSString *stringTwo = @"1j45";
    
    
    NSUInteger stringLength = [stringOne length];
    NSUInteger stringLengthTwo = [stringTwo length];
    NSUInteger value1 = stringLength;
    NSUInteger value2 = stringLengthTwo;
    NSUInteger difference;
    NSString *differenceMessage = @"There is no difference.";
    
    self.labelString.text = stringOne;
    self.labelStringTwo.text = stringTwo;
    
    if (value2 > value1)
    {
        difference = value2 - value1;
        self.labelResult.text = @"Second label is longer than the first.";
        self.labelResult.textColor = [UIColor greenColor];
        differenceMessage = [NSString stringWithFormat:@"Second label is %lu longer than the first.", difference];

    }
    else if (value2 < value1)
    {
        difference = value1 - value2;
        self.labelResult.text = @"First label is longer than the second.";
        self.labelResult.textColor = [UIColor redColor];
        differenceMessage = [NSString stringWithFormat:@"First label is %lu longer than the second.", difference];
    }
    else
    {
        self.labelResult.text = @"Labels are equal length.";
        
    }
    NSString *message = [NSString stringWithFormat:@"Second label is %lu long. First label is %lu long. %@", (unsigned long)value2, (unsigned long)value1, differenceMessage];
    
    self.labelStringLengthDifference.text = message;
    

}



@end
