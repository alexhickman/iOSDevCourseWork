//
//  ThirdVC.m
//  delgationDrinks
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ThirdVC.h"


@interface ThirdVC ()

@end

@implementation ThirdVC

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)buttonPressed:(id)sender {
    Drinks *jkhgjhg = [[Drinks alloc]init];
    jkhgjhg.drinkName = self.textFieldName.text;
    jkhgjhg.drinkPhrase = self.textFieldPhrase.text;
    
    [self.delegateCustom addItem:jkhgjhg];
    [self.navigationController popViewControllerAnimated:TRUE];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    return NO;
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
