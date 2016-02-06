//
//  FourthVC.m
//  FridayChallengeTakeTwo
//
//  Created by Hickman on 10/23/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "FourthVC.h"

@interface FourthVC ()
{
    NSString *originalString;
}
@end

@implementation FourthVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    originalString = self.textToDisplay;
    
    self.labelFour.text = self.textToDisplay;
    self.labelFour.alpha = 1;
    self.buttonRevertToOriginal.alpha = 0;
    self.buttonSave.alpha = 0;
    self.buttonDontSave.alpha = 0;
    
}

- (IBAction)editButtonPressed:(id)sender {
    [self switchVisibility:YES];
}

- (IBAction)buttonRevertToOriginal:(id)sender {
    self.labelFour.text = originalString;
    self.textFieldFour.text = originalString;
}

- (IBAction)buttonSavePressed:(id)sender {
    [self.tableViewEditDelegate editTableViewWith:self.textFieldFour.text];
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)buttonDontSavePressed:(id)sender {
    [self switchVisibility:NO];
}

-(void)switchVisibility:(BOOL)change
{
    if (change) {
        [UIView animateWithDuration:3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            self.labelFour.alpha = 0;
            self.buttonEdit.alpha = 0;
        } completion:nil];
        [UIView animateWithDuration:3 delay:3 options:UIViewAnimationOptionCurveEaseIn animations:^{
            self.textFieldFour.alpha = 1;
            self.buttonSave.alpha = 1;
            self.buttonDontSave.alpha = 1;
            self.buttonRevertToOriginal.alpha = 1;
        } completion:nil];
        [self.textFieldFour becomeFirstResponder];
    }
    else
    {
        [UIView animateWithDuration:3 delay:3 options:UIViewAnimationOptionCurveEaseOut animations:^{
            self.labelFour.alpha = 1;
            self.buttonEdit.alpha = 1;
        } completion:nil];
        [UIView animateWithDuration:3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
            self.textFieldFour.alpha = 0;
            self.buttonSave.alpha = 0;
            self.buttonDontSave.alpha = 0;
            self.buttonRevertToOriginal.alpha = 0;
        } completion:nil];
    }
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
