//
//  EightBallResults.m
//  MagicEightBall
//
//  Created by Hickman on 10/6/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "EightBallResults.h"

@implementation EightBallResults

+(NSArray *)createArray
{
    NSArray *anArray;
    
    EightBallResults *result1 = [EightBallResults initializeObjectWith:[UIImage imageNamed:@"messageMagicEightBall"] and:@"Good News" and:@"It is certain"];
    
    EightBallResults *results2 = [EightBallResults initializeObjectWith:[UIImage imageNamed:@"messageOutlookNotGood"] and:@"Bad news" and:@"Outlook Not Good."];
    
    EightBallResults *results3 = [EightBallResults initializeObjectWith:[UIImage imageNamed:@"messageReplyHazy"] and: @"Meh" and:@"Reply Hazy"];

    anArray = [NSArray arrayWithObjects:result1, results2, results3, nil];
    
    return anArray;
}

+(EightBallResults *)initializeObjectWith:(UIImage *)newImage and:(NSString *)newTitle and:(NSString *)newMessage
{
    EightBallResults *result = [[EightBallResults alloc]init];
    result.image = newImage;
    result.title = newTitle;
    result.message = newMessage;
    
    return result;
}

@end
