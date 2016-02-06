//
//  ViewController.m
//  TextFieldArrays
//
//  Created by Class on 10/7/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "ViewController.h"
#import "NewWord.h"

@interface ViewController ()
{
    NSMutableArray *arrayOfWords;
    NSMutableArray *tempArray;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    arrayOfWords = [[NSMutableArray alloc]init];
    tempArray = [[NSMutableArray alloc]init];
}
-(void)addWordToArray
{
    if ( ([self.textWordAdd.text length] == 0) || !NSEqualRanges( [self.textWordAdd.text rangeOfCharacterFromSet:[NSCharacterSet whitespaceCharacterSet]], NSMakeRange(NSNotFound, 0)))
    {
        self.labelError.text = @"You cant do that";
    } else {
        [arrayOfWords addObject: self.textWordAdd.text];
        self.labelError.text = @"";
    }
}

- (IBAction)buttonEnterWord:(id)sender
{
    [self addWordToArray];
    for (NSString *wordsWordsWords in arrayOfWords) {
        NSLog(@"%@", wordsWordsWords);
    }
}

- (IBAction)buttonCharacterCount:(id)sender
{
    [self addWordToArray];
    for (NSString *wordsWordsWords in arrayOfWords) {
        NSLog(@"length of word: %lu",[wordsWordsWords length]);
    }
}

- (IBAction)buttonUpperCase:(id)sender {
    tempArray = [[NSMutableArray alloc]init];

    for (NSString *stringCapitals in arrayOfWords) {
    [tempArray addObject: stringCapitals.uppercaseString];
    }
    for (NSString *caps in tempArray) {
        NSLog(@"%@",caps);
    }
    [arrayOfWords setArray:tempArray];
}

- (IBAction)buttonLowerCase:(id)sender {
    tempArray = [[NSMutableArray alloc]init];

    for (NSString *stringCapitals in arrayOfWords) {
        [tempArray addObject: stringCapitals.lowercaseString];
    }
    for (NSString *lower in tempArray) {
        NSLog(@"%@",lower);
    }
    [arrayOfWords setArray:tempArray];

}
- (IBAction)buttonNoSpace:(id)sender {
    tempArray = [[NSMutableArray alloc]init];
    
    for (NSString *stringCapitals in arrayOfWords) {
        [tempArray addObject: [stringCapitals stringByReplacingOccurrencesOfString:@" " withString:@""]];
    }
    for (NSString *noSpace in tempArray) {
        NSLog(@"%@",noSpace);
    }
    [arrayOfWords setArray:tempArray];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self addWordToArray];
    
    return YES;
}





@end
