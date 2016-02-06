//
//  DoMaths.h
//  CalculatorTracking
//
//  Created by Hickman on 10/5/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DoMaths : NSObject

@property (nonatomic) int totalEquationsRun;
@property (nonatomic) int totalAddition;
@property (nonatomic) int totalSubtraction;
@property (nonatomic) int totalMultiplication;
@property (nonatomic) int totalDivision;
@property (strong, nonatomic) NSString *resultString;


-(void)additionWith:(int)leftNumber and:(int)rightNumber;
-(void)subtract:(int)leftNumber and:(int)rightNumber;
-(void)multiply:(int)leftNumber and:(int)rightNumber;
-(void)divide:(int)leftNumber and:(int)rightNumber;
-(void)resultsToPrint:(int)result;


@end
