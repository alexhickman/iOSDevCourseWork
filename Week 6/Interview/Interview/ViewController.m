//
//  ViewController.m
//  Interview
//
//  Created by Hickman on 11/5/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int currentNumber;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.labelNumber.text = @"5";
    currentNumber = 0;
}

- (IBAction)buttonPressed:(id)sender
{
    int number = arc4random() % 9;
    
    while (number < 5 || number == currentNumber) {
        number = arc4random() % 9;
    }
    
    currentNumber = number;
    self.labelNumber.text = [NSString stringWithFormat:@"%d", number];
    
    
//    if([self.labelNumber.text isEqualToString:@"5"])
//    {
//        self.labelNumber.text = @"10";
//    }
//    else{
//        self.labelNumber.text = @"5";
//        
//    }
}



@end
