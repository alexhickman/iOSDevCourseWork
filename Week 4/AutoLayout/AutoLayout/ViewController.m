//
//  ViewController.m
//  AutoLayout
//
//  Created by Hickman on 10/21/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender
{
    [UIView animateWithDuration:3 animations:^{
        self.heightConstraint.constant = 50;
        [self.view layoutIfNeeded];
    }];
    //self.label.frame = CGRectMake(0, 0, 10, 15);
}

@end
