//
//  ViewController.m
//  calculator
//
//  Created by Hickman on 10/1/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    NSString *currentEquation;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    currentEquation = @"";
    
}

/*
 NSCharacterSet *operatorCharacters = [NSCharacterSet characterSetWithCharactersInString:@"+-X/"];
 NSCharacterSet *numberCharacters = [NSCharacterSet decimalDigitCharacterSet];
 
 NSArray *numbers = [math componentsSeparatedByCharactersInSet:operatorCharacters];
 NSArray *operators = [math componentsSeparatedByCharactersInSet:numberCharacters];
 
 if (numbers.count != operators.count - 1) {
 NSLog(@"There should be one more number than operators!");
 return;
 }
 
 int total = 0;
 
 //    for (int i = 0; i < numbers.count; i++) {
 //        NSString *number = numbers[i];
 //
 //
 //    }
 */



- (NSString *)editCurrentEquation:(NSString *)currentString withThis:(NSString *)addString
{
    NSString *newString = [currentString stringByAppendingString:addString];
    return newString;
}

- (IBAction)buttonClear:(id)sender {
    self.labelDisplay.text = @"What do you want to compute?";
    self.labelEquation.text = @"";
    
}

- (IBAction)buttonNumberOne:(id)sender {

    currentEquation = [self editCurrentEquation:currentEquation withThis:@"1"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"1";

}

- (IBAction)buttonNumberTwo:(id)sender {
  
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"2"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"2";

}

- (IBAction)buttonNumberThree:(id)sender {
  
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"3"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"3";

}

- (IBAction)buttonNumberFour:(id)sender {
    
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"4"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"4";

}

- (IBAction)buttonNumberFive:(id)sender {
    
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"5"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"5";

}

- (IBAction)buttonNumberSix:(id)sender {
    
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"6"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"6";

}

- (IBAction)buttonNumberSeven:(id)sender {
    
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"7"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"7";

}

- (IBAction)buttonNumberEight:(id)sender {
    
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"8"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"8";

}

- (IBAction)buttonNumberNine:(id)sender {
    
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"9"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"9";

}

- (IBAction)buttonNumberZero:(id)sender {
    
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"0"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"0";

}

- (IBAction)buttonPlus:(id)sender {
    
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"+"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"+";

}

- (IBAction)buttonDivide:(id)sender {
    
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"/"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"/";

}

- (IBAction)buttonMultiply:(id)sender {
    
    currentEquation = [self editCurrentEquation:currentEquation withThis:@"X"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"X";

}

- (IBAction)buttonSubtract:(id)sender {

    currentEquation = [self editCurrentEquation:currentEquation withThis:@"-"];
    self.labelEquation.text = currentEquation;
    self.labelDisplay.text = @"-";

}

- (IBAction)buttonEqual:(id)sender {
    
}













@end
