//
//  ViewController.m
//  BitchenJacket
//
//  Created by Hickman on 9/28/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    float jacket = 149;
    float tax = .095;
    float bankAccount = 160;
    float coupon = .1;
    float total = jacket * (1 + tax);
    float couponTotal = (jacket - (jacket * coupon)) * (1 + tax);
    
    NSString *message;
    
    if (bankAccount >= total) {
        message = @"Buy jacket!";
       // NSLog(@"Buy jacket!");
    }
    else if (bankAccount >= couponTotal)
    {
        message = @"Buy the jacket with coupon!";
       // total = couponTotal;
        // NSLog(@"So sad, you can't buy it now.");
    }
    else
    {
     message = @"So sad, you can't buy it now.";
       // NSLog(@"So sad, you can't buy it now.");
    }

    NSLog(@"The total price is $%.2f, with the 10%% discount the price is $%.2f. %@", total, couponTotal, message);
}

@end
