//
//  LoginVC.m
//  ParseAccounts
//
//  Created by Tatiana Jamison on 10/27/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "LoginVC.h"

@implementation LoginVC

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.textFieldPassword.secureTextEntry = true;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // clear password field
    self.textFieldPassword.text = @"";
}

- (IBAction)pressedSignIn:(id)sender {
    if (self.labelError.text) {
        self.labelError.text = @"";
    }
    [PFUser logInWithUsernameInBackground:self.textFieldEmail.text
                                 password:self.textFieldPassword.text
                                    block:^(PFUser *user, NSError *error) {
                                        if (user) {
                                            [self performSegueWithIdentifier:@"goToTableView" sender:self];

                                        } else {
                                            NSString *errorString = [error userInfo][@"error"];
                                            
                                            self.labelError.text = errorString;
                                        }
                                    }];
}

- (IBAction)pressedCreateAccount:(id)sender {
    if (self.labelError.text) {
        self.labelError.text = @"";
    }
    [self createNewUser];
}

- (void)createNewUser
{
    PFUser *user = [PFUser user];
    user.username = self.textFieldEmail.text;
    user.password = self.textFieldPassword.text;
    user.email = self.textFieldEmail.text;
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error)
     {
         if (!error)
         {
             [self performSegueWithIdentifier:@"goToTableView" sender:self];
         }
         else
         {
             NSString *errorString = [error userInfo][@"error"];
             
             self.labelError.text = errorString;
         }
     }];
}

//- (BOOL)validateEmail:(NSString *)candidate
//{
//    NSString *emailRegex =
//    @"(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"
//    @"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"
//    @"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"
//    @"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"
//    @"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"
//    @"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"
//    @"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
//    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES[c] %@", emailRegex];
//    
//    return [emailTest evaluateWithObject:candidate];
//}

@end
