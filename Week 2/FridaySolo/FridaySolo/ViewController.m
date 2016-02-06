//
//  ViewController.m
//  FridaySolo
//
//  Created by Hickman on 10/9/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *colours;
    int lastRandomNumber;
    NSMutableDictionary *passwords;
    NSString *username;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    colours = [[NSArray alloc]initWithObjects:[UIColor redColor], [UIColor greenColor], [UIColor purpleColor], [UIColor grayColor], [UIColor yellowColor], nil];
    passwords = [[NSMutableDictionary alloc]init];
    lastRandomNumber = -1;
}
- (IBAction)buttonDictionaryContents:(id)sender {
    for (NSString *key in passwords) {
        NSLog(@"Username: %@\nPassword: %@.", key, (NSString *)[passwords objectForKey:key]);
    }
    NSLog(@"%@", passwords);
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    if ([self.textFirstField isFirstResponder]) {
        if (![self verifyUsername:self.textFirstField]) {
            [self.textSecondField becomeFirstResponder];
            return YES;
        }
        else if ([self.textFirstField.text length] < 7)
        {
            self.textFirstField.text = @"Username not long enough!";
            return YES;
        }
        else
        {
        self.textFirstField.text = @"Username name taken, pick another.";
        }
    }
    if ([self.textSecondField isFirstResponder]) {
        
        if ([self verifyPassword:self.textSecondField])
        {
            [passwords setObject:self.textSecondField.text forKey:self.textFirstField.text];
            [self.textFirstField becomeFirstResponder];
            return YES;
        }
        else
        {
            self.textSecondField.text = @"Password Not Valid";
            return YES;
        }
        
    }
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self changeBackground];
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    [self changeBackground];
    return YES;
}

-(void)changeBackground
{
    int randomNumber;
    do
    {
        randomNumber = arc4random() % [colours count];
        
    } while (lastRandomNumber == randomNumber);
    
    lastRandomNumber = randomNumber;
    
    if ([self.textFirstField isFirstResponder]) {
        self.view.backgroundColor = colours[randomNumber];
    }
    if ([self.textSecondField isFirstResponder]) {
        self.view.backgroundColor = colours[randomNumber];
    }
}

-(BOOL)verifyUsername:(UITextField *)textField
{
    NSString *usernameToCheck = textField.text;
    BOOL unique = 0;
    for (NSString *key in passwords)
    {
       unique = [usernameToCheck isEqualToString:key];
        if (unique)
        {
            return unique;
        }
    }
    return unique;
}

-(BOOL)verifyPassword:(UITextField *)textField
{
    NSString *passwordToCheck = textField.text;
    BOOL lowerCaseLetter = 0;
    BOOL upperCaseLetter = 0;
    BOOL digit = 0;
    if([passwordToCheck length] >= 7)
    {
        for (int i = 0; i < [passwordToCheck length]; i++)
        {
            char c = [passwordToCheck characterAtIndex:i];
            
            if(!lowerCaseLetter)
            {
                lowerCaseLetter = [[NSCharacterSet lowercaseLetterCharacterSet] characterIsMember:c];
            }
            if(!upperCaseLetter)
            {
                upperCaseLetter = [[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:c];
            }
            if(!digit)
            {
                digit = [[NSCharacterSet decimalDigitCharacterSet] characterIsMember:c];
            }
        }
    }
    if(digit && lowerCaseLetter && upperCaseLetter)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

@end
