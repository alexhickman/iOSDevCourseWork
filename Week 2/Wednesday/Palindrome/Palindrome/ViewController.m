//
//  ViewController.m
//  Palindrome
//
//  Created by Class on 10/7/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int yesPalindrome;
    int noPalindrome;
    NSMutableArray *arrayOfPalindromes;
    
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    yesPalindrome = 0;
    noPalindrome = 0;
    arrayOfPalindromes = [[NSMutableArray alloc]init];
}

- (IBAction)buttonSubmitInput:(id)sender
{
    if ([arrayOfPalindromes count])
    {
        BOOL repeatedWord = false;
        for (NSString *pullingOut in arrayOfPalindromes)
        {
            if([self.textInput.text isEqualToString:pullingOut])
            {
                self.labelError.text = @"You already did that one";
                repeatedWord = true;
                break;
            }
        }
        if (!repeatedWord)
        {
            [self isPalendrome];
            [arrayOfPalindromes addObject:self.textInput.text];
            self.labelYesTally.text = [NSString stringWithFormat:@"%d", yesPalindrome];
            self.labelNoTally.text = [NSString stringWithFormat:@"%d", noPalindrome];
        }
    }
    else
    {
        [self isPalendrome];
        [arrayOfPalindromes addObject:self.textInput.text];
        self.labelYesTally.text = [NSString stringWithFormat:@"%d", yesPalindrome];
        self.labelNoTally.text = [NSString stringWithFormat:@"%d", noPalindrome];
        
    }
}


-(void)isPalendrome
{
    NSString *textInput = self.textInput.text;
    NSMutableString *reverseText = [NSMutableString string];
    NSInteger charIndex = [textInput length];
    while (charIndex > 0)
    {
        charIndex--;
        NSRange textInputRange = NSMakeRange(charIndex, 1);
        [reverseText appendString:[textInput substringWithRange:textInputRange]];
    }
    NSLog(@"%@\n%@",textInput, reverseText);
    
    if (![textInput compare:reverseText])
    {
        self.labelPalindromeOrNot.text = @"It is a palindrome";
        yesPalindrome++;
    }
    else
    {
        self.labelPalindromeOrNot.text = @"It is not a palindrome";
        noPalindrome++;
    }
    
    
}


@end
