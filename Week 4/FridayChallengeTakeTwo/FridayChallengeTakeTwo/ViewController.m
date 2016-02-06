//
//  ViewController.m
//  FridayChallengeTakeTwo
//
//  Created by Hickman on 10/23/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.labelConstraintHeight.constant = self.view.frame.size.height;
    self.navigationController.navigationBarHidden = YES;
}

-(void)viewDidAppear:(BOOL)animated
{
    [UIView animateWithDuration:5 animations:^{
        self.labelConstraintTop.constant = self.view.frame.size.height;
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        [self performSegueWithIdentifier:@"pushingOn" sender:self];
    }];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   
    // SecondVC *svc = [segue destinationViewController];
}

@end
