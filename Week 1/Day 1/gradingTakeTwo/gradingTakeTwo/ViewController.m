//
//  ViewController.m
//  gradingTakeTwo
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
    double score = -45;
    
    NSString *message;
    if (score > 100) {
        message = @"You rock you got an A and extra credit";
    }
    else if (score > 89) {
        message = @"You received an A!";
    }
    else if (score > 79) {
        message = @"You received a B.";
    }
    else if (score > 69) {
        message = @"You received a C.";
    }
    else if (score > 59) {
        message = @"You received a D.";
    }
    else if (score >= 0) {
        message = @"You failed!";
    }
    else {
        message = @"Invalid grade entered.";
    }
    NSLog(@"%@", message);
}



@end
