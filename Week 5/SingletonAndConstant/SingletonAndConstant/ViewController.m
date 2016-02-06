//
//  ViewController.m
//  SingletonAndConstant
//
//  Created by Hickman on 10/29/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "Constants.h"
#import "APIManager.h"

@interface ViewController ()

@end

@implementation ViewController

static NSString *const kCellIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", kCellIdentifier);
    NSLog(@"%@", kBaseUrl);
    
//    kCellIdentifier = @"poop";  This errors out since it can't be changed
    
    [self staticExample];
    [self staticExample];
    [self staticExample];
    [self staticExample];
    
    APIManager *sApiInstance = [APIManager sharedManager];
    [sApiInstance callsApi];
    [sApiInstance callsApi];
    
    
    [APIManager sharedManager];
    [APIManager sharedManager];
    [APIManager sharedManager];
    [APIManager sharedManager];
    
    

}

-(void)staticExample
{
    static int number = 0;
    number++;
    NSLog(@"%d", number);
}

@end
