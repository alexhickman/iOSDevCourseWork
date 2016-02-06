//
//  PlayGame.h
//  RockPaperScissors
//
//  Created by Hickman on 10/6/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PlayGame : NSObject

@property (strong, nonatomic) UIImage *choiceImage;
@property (strong, nonatomic) NSString *winnerMessage;
@property (nonatomic) int humanWins;
@property (nonatomic) int computerWins;
@property (nonatomic) int tieTotal;

-(PlayGame *)letsPlay:(int)selected;
-(PlayGame *)createOutput:(NSString *)winnerString with:(UIImage *)computersImage;


@end
