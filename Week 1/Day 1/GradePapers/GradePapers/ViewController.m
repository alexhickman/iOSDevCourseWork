//
//  ViewController.m
//  GradePapers
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
    int score = 76566546;
    NSString *message = @"Invalid score.";

    if (score > 100) {
        message = @"You received an A plus some extra.";
    }
    else if (score > 89)
    {
        message = @"You received an A!";
    }
    else if (score > 79)
    {
        message = @"You received a B.";
    }
    else if (score > 69)
    {
        message = @"You received a C.";
    }
    else if (score > 59)
    {
        message = @"You received a D.";
    }
    else if (score >= 0)
    {
        message = @"You received a F.";
    }
    if (message)
    {
    NSLog(@"%@", message);
    }
}

@end
