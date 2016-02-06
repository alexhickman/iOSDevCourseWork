//
//  ThirdVC.m
//  FridayChallengeTakeTwo
//
//  Created by Hickman on 10/23/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ThirdVC.h"

@interface ThirdVC ()

@end

@implementation ThirdVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.textFieldContent becomeFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.tableViewAddedDelegate addStringToTableView:self.textFieldContent.text];
    [self dismissViewControllerAnimated:true completion:nil];
    return YES;
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
