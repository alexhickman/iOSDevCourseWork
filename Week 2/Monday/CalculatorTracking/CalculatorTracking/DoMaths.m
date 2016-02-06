//
//  DoMaths.m
//  CalculatorTracking
//
//  Created by Hickman on 10/5/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "DoMaths.h"


@implementation DoMaths

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.totalEquationsRun = 0;
        self.totalAddition = 0;
        self.totalSubtraction = 0;
        self.totalMultiplication = 0;
        self.totalDivision = 0;
    }
    return self;
}

-(void)additionWith:(int)leftNumber and:(int)rightNumber;
{
    self.totalEquationsRun++;
    self.totalAddition++;
    [self resultsToPrint:(leftNumber + rightNumber)];
}

-(void)subtract:(int)leftNumber and:(int)rightNumber;
{
    self.totalEquationsRun++;
    self.totalSubtraction++;
    [self resultsToPrint:(leftNumber - rightNumber)];
}

-(void)multiply:(int)leftNumber and:(int)rightNumber;
{
    self.totalEquationsRun++;
    self.totalMultiplication++;
    [self resultsToPrint:(leftNumber * rightNumber)];
}
-(void)divide:(int)leftNumber and:(int)rightNumber;
{
    self.totalEquationsRun++;
    self.totalDivision++;
    [self resultsToPrint:(leftNumber / rightNumber)];
}

-(void)resultsToPrint:(int)result
{
    self.resultString = [NSString stringWithFormat:@"Answer = %d.\nTotal Equations = %d\nAdditions Run = %d\nSubtractions Run = %d\nMultiplications Run = %d\nDivisions Run = %d\n", result, self.totalEquationsRun, self.totalAddition, self.totalSubtraction, self.totalMultiplication, self.totalDivision];
}
@end
