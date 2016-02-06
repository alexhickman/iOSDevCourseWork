//
//  MathClass.m
//  StoryboardIBAction
//
//  Created by Hickman on 10/1/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "MathClass.h"

@implementation MathClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.currentValue = 10;
    }
    return self;
}

-(void)addTwoToThisNumber:(int)numberToAdd
{
    self.currentValue = self.currentValue + 2;
    
    NSLog(@"%d", numberToAdd + 2);
}

@end
