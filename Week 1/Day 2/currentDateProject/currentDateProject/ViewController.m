//
//  ViewController.m
//  currentDateProject
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
    // Do any additional setup after loading the view, typically from a nib.
    int secondsSince1970;
    
    NSDate *today = [NSDate date];
    NSLog(@"%@", today);

    secondsSince1970 = [today timeIntervalSince1970];
    NSLog(@"There have been %i seconds since January 1, 1970.", secondsSince1970);
    
    int years = secondsSince1970 / (365*24*60*60);
    int months = ((secondsSince1970 - (years*365*24*60*60)))/(60*60*24*30);
    int days =  (secondsSince1970 - (years*365*24*60*60) - (months*60*60*24*30) )/(60*60*24);
    
    NSLog(@"Years = %i \n Months = %i \n Days = %i", years, months, days);
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy"];
    
    NSString *currentYear = [dateFormatter stringFromDate:today];
    
    
    NSLog(@"The year is %@.", currentYear);
    
}



@end
