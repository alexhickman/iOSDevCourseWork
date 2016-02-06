//
//  ViewController.m
//  FizzBuzzButtons
//
//  Created by Hickman on 10/2/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    int maxValue;
    int minValue;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    maxValue = [self.textMaxValue.text intValue];
    minValue = [self.textMinValue.text intValue];
    [self fizzbuzzTime:maxValue withMin:minValue];
    
}

- (void)fizzbuzzTime:(int)newMaxValue withMin:(int)newMinValue
{
    int lastFizz = 0;
    int lastBuzz = 0;
    int lastFizzbuzz = 0;
    int lastNumber = 0;
    
    int numberOfFizz = 0;
    int numberOfBuzz = 0;
    int numberOfFizzbuzz = 0;
    
    for (int i = newMinValue; i <= newMaxValue; i++)
    {
        if (i == 0)
        {
            NSLog(@"%i", i);
            continue;
        }
        if (i % 3 == 0)
        {
            if (i % 5 == 0)
            {
                NSLog(@"FizzBuzz");
                numberOfFizzbuzz++;
                lastFizzbuzz = i;
                continue;
            }
            NSLog(@"Fizz");
            numberOfFizz++;
            lastFizz = i;
            continue;
        }
        if (i % 5 == 0) {
            NSLog(@"Buzz");
            numberOfBuzz++;
            lastBuzz = i;
            continue;
        }
        else
        {
            NSLog(@"%i", i);
            lastNumber = i;
        }
    }
    self.labelResults.text = [NSString stringWithFormat:@"Total Fizz Count = %i\nLast Fizz = %i\nTotal Buzz Count = %i\nLast Buzz = %i.\nTotal FizzBuzz Count = %i\nLast Fizzbuzz = %i\nLast number = %i.", numberOfFizz, lastFizz, numberOfBuzz, lastBuzz, numberOfFizzbuzz, lastFizzbuzz, lastNumber];
}

- (IBAction)buttonSetMax:(id)sender {
    
    maxValue = [self.textMaxValue.text intValue];
    minValue = [self.textMinValue.text intValue];
    
    if ([self isInputValidWithMin:minValue andMax:maxValue])
    {
        [self fizzbuzzTime:maxValue withMin:minValue];
    }
    else
    {
        
    }
    
}

- (BOOL)isInputValidWithMin:(int)newMinValue andMax:(int)newMaxValue
{
    self.labelResults.text = @"";
    for (int j = 1; j <= 4; j++)
    {
        if (j == 1 && (newMaxValue < newMinValue))
        {
            self.labelResults.text = [NSString stringWithFormat:@"%@\nMin value is larger than Max value.",self.labelResults.text];
            continue;
        }
        if (j == 2 && newMaxValue < 0) {
            self.labelResults.text = [NSString stringWithFormat:@"%@\nMax value is negative", self.labelResults.text];
            continue;
        }
        if (j == 3 && newMinValue < 0) {
            self.labelResults.text = [NSString stringWithFormat:@"%@\nMin value is negative", self.labelResults.text];
            continue;
        }
        if (j == 4 && (newMaxValue == newMinValue)) {
            self.labelResults.text = [NSString stringWithFormat:@"%@\nValues are the same!", self.labelResults.text];
            continue;
        }
    }
    
    return [self.labelResults.text isEqualToString:@""];
    
}


@end
