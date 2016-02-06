//
//  ViewController.m
//  Segues
//
//  Created by Hickman on 10/15/15.
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

- (IBAction)pressedManualModal:(id)sender
{
    [self performSegueWithIdentifier:@"modalSegue" sender:self];
}


- (IBAction)pressedManualPush:(id)sender
{
    [self performSegueWithIdentifier:@"pushSegue" sender:self];
}

@end
