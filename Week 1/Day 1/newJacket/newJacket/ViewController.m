//
//  ViewController.m
//  newJacket
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
    // Do any additional setup after loading the view, typically from a nib.


double jacket = 149;
double backAccount = 160;
double tax = .095;
double coupon = .05;

double total = jacket + jacket * tax;
double totalCoupon = total - jacket * coupon;

    NSString *message;
    
    if (totalCoupon <= backAccount) {
        message = @"You can buy it with a 5%% coupon.";
        //  NSLog(@"You can buy it with the 5%% coupon at the price of $%.2f", totalCoupon);
    }
    else if (total > backAccount) {
        message = @"You can't buy the jacket";
        //NSLog(@"Sorry you can't buy the jacket at the cost of $%.2f.", total);
    }
    else
    {
        message = @"You can buy the jacket at full price.";
        //NSLog(@"You can buy the jacket at the cost of $%.2f.", total);
    }
    
    //NSLog(@"The total price is $%.2f, with the 5%% discount the price is $%.2f.", total, totalCoupon);
    NSLog(@"The total cost of the jacket is %.2f, with a 5%% coupon it is %.2f. %@", total, totalCoupon, message) ;
}
    @end
