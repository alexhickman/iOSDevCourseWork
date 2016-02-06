//
//  ViewController.m
//  CalculatorTracking
//
//  Created by Hickman on 10/5/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "DoMaths.h"

@interface ViewController ()
{
    int leftNumber;
    int rightNumber;
    DoMaths *doingIt;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    doingIt = [[DoMaths alloc]init];
}

- (IBAction)buttonAdd:(id)sender {
    [self setNumbers];
    [doingIt additionWith:leftNumber and:rightNumber];
    self.labelResult.text = doingIt.resultString;
}

- (IBAction)buttonSubtract:(id)sender {
    [self setNumbers];
    [doingIt subtract:leftNumber and:rightNumber];
    self.labelResult.text = doingIt.resultString;
}

- (IBAction)buttonMultiply:(id)sender {
    [self setNumbers];
    [doingIt multiply:leftNumber and:rightNumber];
    self.labelResult.text = doingIt.resultString;
}

- (IBAction)buttonDivide:(id)sender {
    [self setNumbers];
    [doingIt divide:leftNumber and:rightNumber];
    self.labelResult.text = doingIt.resultString;
}

-(void)setNumbers
{
    leftNumber = self.textLeftField.text.intValue;
    rightNumber = self.textRightField.text.intValue;
}

@end
