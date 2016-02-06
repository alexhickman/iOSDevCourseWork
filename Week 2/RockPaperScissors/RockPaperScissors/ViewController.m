//
//  ViewController.m
//  RockPaperScissors
//
//  Created by Hickman on 10/6/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "PlayGame.h"

@interface ViewController ()
{
    int totalHumanWins;
    int totalComputerWins;
    int ties;
    PlayGame *yay;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    yay = [[PlayGame alloc] init];
}
- (IBAction)buttonRock:(id)sender
{
    yay = [yay letsPlay:0];
    
    totalComputerWins = totalComputerWins + yay.computerWins;
    totalHumanWins = totalHumanWins + yay.humanWins;
    ties = ties + yay.tieTotal;
    
    self.labelWinner.text = [NSString stringWithFormat:@"%@\nHuman Wins = %d\nComputer Wins = %d\nTie Total = %d", yay.winnerMessage, totalHumanWins, totalComputerWins, ties];
    self.imageComputerChoice.image = yay.choiceImage;
    
}

- (IBAction)buttonPaper:(id)sender
{
    yay = [yay letsPlay:1];
    
    totalComputerWins = totalComputerWins + yay.computerWins;
    totalHumanWins = totalHumanWins + yay.humanWins;
    ties = ties + yay.tieTotal;
    
    self.labelWinner.text = [NSString stringWithFormat:@"%@\nHuman Wins = %d\nComputer Wins = %d\nTie Total = %d", yay.winnerMessage, totalHumanWins, totalComputerWins, ties];
    self.imageComputerChoice.image = yay.choiceImage;
}

- (IBAction)buttonScissors:(id)sender
{
    yay = [yay letsPlay:2];
    
    totalComputerWins = totalComputerWins + yay.computerWins;
    totalHumanWins = totalHumanWins + yay.humanWins;
    ties = ties + yay.tieTotal;
    
    self.labelWinner.text = [NSString stringWithFormat:@"%@\nHuman Wins = %d\nComputer Wins = %d\nTie Total = %d", yay.winnerMessage, totalHumanWins, totalComputerWins, ties];
    self.imageComputerChoice.image = yay.choiceImage;
}

@end
