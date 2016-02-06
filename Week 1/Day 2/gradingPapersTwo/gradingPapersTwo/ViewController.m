//
//  ViewController.m
//  gradingPapersTwo
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
    
    int percentage = -57;
    if (percentage > 0) {
        NSString *letterGrade = [self letterGradeForPercentage:percentage];
        NSLog(@"Your grade for percentage %d%% is %@.", percentage, letterGrade);
    }
    else{
        NSLog(@"Invalid grade.");
    }
}

- (NSString *)letterGradeForPercentage:(unsigned int)percentage {
    if (percentage > 89) {
        return @"A";
    }
    if (percentage > 79) {
        return @"B";
    }
    if (percentage > 69) {
        return @"C";
    }
    if (percentage > 59) {
        return @"D";
    }
    return @"F";
}

@end
