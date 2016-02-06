//
//  EightBallResults.h
//  MagicEightBall
//
//  Created by Hickman on 10/6/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface EightBallResults : NSObject

@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *message;
@property (strong, nonatomic) NSString *title;

+(NSArray *)createArray;
+(EightBallResults *)initializeObjectWith:(UIImage *)newImage and:(NSString *)newTitle and:(NSString *)newMessage;

@end
