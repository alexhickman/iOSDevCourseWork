//
//  ViewController.m
//  fizzBuzzLabels
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
    [self fizzBuzzTime];
    
}

- (void)fizzBuzzTime
{
    int fizzCounter = 0;
    int buzzCounter = 0;
    int fizzbuzzCounter = 0;
    int numberCounter = 0;
    int finalFizz = 0;
    int finalBuzz = 0;
    int finalFizzbuzz = 0;
    int finalNumber = 0;
    
    for (int i = 0; i <= 100; i++) {
        if (i == 0)
        {
            NSLog(@"%i", i);
            continue;
        }
        if (i % 3 == 0)
        {
            if (i % 5 == 0)
            {
                NSLog(@"fizzbuzz");
                finalFizzbuzz = i;
                fizzbuzzCounter++;
                continue;
            }
            NSLog(@"fizz");
            finalFizz = i;
            fizzCounter++;
            continue;
        }
        if (i % 5 == 0)
        {
            NSLog(@"buzz");
            finalBuzz = i;
            buzzCounter++;
        }
        else
        {
            NSLog(@"%i", i);
            finalNumber = i;
            numberCounter++;
        }
    }
    self.labelNumberOfBuzz.text = [NSString stringWithFormat:@"Number of buzz = %i", buzzCounter];
    self.labelNumberOfFizz.text = [NSString stringWithFormat:@"Number of fizz = %i", fizzCounter];
    self.labelNumberOfNumbers.text = [NSString stringWithFormat:@"Number of numbers = %i", numberCounter];
    self.labelNumberOfFizzbuzz.text = [NSString stringWithFormat:@"Number of fizzbuzz = %i", fizzbuzzCounter];
    self.labelFinalValues.text = [NSString stringWithFormat:@"The final Fizz was %i. \nThe final Buzz was %i. \nThe final Fizzbuzz was %i.\nThe final number was %i", finalFizz, finalBuzz, finalFizzbuzz, finalNumber];
}


@end
