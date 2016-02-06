//
//  ViewController.m
//  daytwo
//
//  Created by Hickman on 9/29/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    NSString *newString =@"Hello World";
    
    NSString *upperCaseVersion = [newString uppercaseString];
    
    NSLog(@"%@", newString);
    NSLog(@"%@", upperCaseVersion);
    */
    
    int x;
    x = [self addTwo:4];
   // NSLog(@"%i", x);

    NSString *newWord = @"Sup!";
   // NSLog(@"%p", newWord);

    NSLog(@"%@",newWord);
    NSLog(@"%p", newWord);
    NSString *newVersion  = [self capitalizationExpert:newWord];
    NSLog(@"%@",newVersion);
    NSLog(@"%p", newVersion);

}

-(int)addTwo:(int)numberToAdd
{
    int total = numberToAdd + 2;
    return total;
}

-(NSString *)capitalizationExpert: (NSString *)wordToCapitalize
{
    NSLog(@"%@",wordToCapitalize);
    NSLog(@"%p", wordToCapitalize);
    
    NSString *capitalizedWord = [wordToCapitalize uppercaseString];
    NSLog(@"%@", capitalizedWord);
    NSLog(@"%p", capitalizedWord);
    
    return capitalizedWord;
}

@end
