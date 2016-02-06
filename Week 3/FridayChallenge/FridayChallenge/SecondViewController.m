//
//  SecondViewController.m
//  FridayChallenge
//
//  Created by Hickman on 10/16/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "SecondViewController.h"
#import "Heroes.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.labelName.text = self.currentHero.nameOfHero;
    self.labelPower.text = self.currentHero.power;
     [self.textFieldName becomeFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.currentHero.nameOfHero = self.textFieldName.text;
    [self.navigationController popViewControllerAnimated:TRUE];
    return TRUE;
}

-(void)viewDidAppear:(BOOL)animated
{
    [UIView animateWithDuration:5 animations:^{self.view.backgroundColor = self.currentHero.colour;}];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
