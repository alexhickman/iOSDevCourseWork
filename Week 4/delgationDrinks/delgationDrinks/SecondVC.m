//
//  SecondVC.m
//  delgationDrinks
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "SecondVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.labelSVC.text = self.selectedDrink.drinkName;
}

- (IBAction)dismissButton:(id)sender
{
    if (![self.textFieldNewName.text isEqualToString:@""]) {
        self.selectedDrink.drinkName = self.textFieldNewName.text;
    }
    if (![self.textFieldNewPhrase.text isEqualToString:@""]) {
        self.selectedDrink.drinkPhrase = self.textFieldNewPhrase.text;
    }
    
    [self.delegateCustom passText:self.selectedDrink];
    [self dismissViewControllerAnimated:YES completion:nil];
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
