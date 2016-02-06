//
//  PlayGame.m
//  RockPaperScissors
//
//  Created by Hickman on 10/6/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "PlayGame.h"

@implementation PlayGame
{
    int totalHumanWins;
    int totalComputerWins;
    int ties;
    PlayGame *returnit;
}
- (instancetype)init
{
    self = [super init];
    if (self)
    {
        returnit = self;
    }
    return self;
}
-(PlayGame *)letsPlay:(int)selected
{
    // 0 = rock
    // 1 = paper
    // 2 = scissors
    NSArray *objectToReturn = [[NSArray alloc]init];
    objectToReturn = @[[UIImage imageNamed:@"rock"], [UIImage imageNamed:@"paper"], [UIImage imageNamed:@"Scissors"]];
    
    UIImage *tieImage = [UIImage imageNamed:@"tie"];
    
    int computersChoice = arc4random() % 3;
  
    if (!returnit)
    {
        returnit = [[PlayGame alloc]init];
    }
    
    returnit.tieTotal = 0;
    returnit.humanWins = 0;
    returnit.computerWins = 0;
    
    if (selected == computersChoice) {
        returnit = [self createOutput:@"Tie" with:tieImage];
        returnit.tieTotal++;
    }
    if ((selected == 0) && (computersChoice == 1))
    {
        returnit = [self createOutput:@"Computer Wins" with:objectToReturn[computersChoice]];
        returnit.computerWins++;
    }
    if ((selected == 0) && (computersChoice == 2))
    {
        returnit = [self createOutput:@"You Win" with:objectToReturn[computersChoice]];
        returnit.humanWins++;
    }
    if ((selected == 1) && (computersChoice == 2))
    {
        returnit = [self createOutput:@"Computer Wins" with:objectToReturn[computersChoice]];
        returnit.computerWins++;

    }
    if ((selected == 2) && (computersChoice == 1))
    {
        returnit = [self createOutput:@"You Win" with:objectToReturn[computersChoice]];
        returnit.humanWins++;

    }
    if ((selected == 2) && (computersChoice == 0))
    {
        returnit = [self createOutput:@"Computer Wins" with:objectToReturn[computersChoice]];
        returnit.computerWins++;

    }
    if ((selected == 1) && (computersChoice == 0))
    {
        returnit = [self createOutput:@"You Win" with:objectToReturn[computersChoice]];
        returnit.humanWins++;

    }
    
    return returnit;
}

-(PlayGame *)createOutput:(NSString *)winnerString with:(UIImage *)computersImage
{
    returnit.choiceImage = computersImage;
    returnit.winnerMessage = winnerString;
    return returnit;
}

@end
