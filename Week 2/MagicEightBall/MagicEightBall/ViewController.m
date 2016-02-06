//
//  ViewController.m
//  MagicEightBall
//
//  Created by Hickman on 10/6/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "EightBallResults.h"

@interface ViewController ()

{
    int lastNumber;
    NSArray *arrayOfObjects;
   
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrayOfObjects = [EightBallResults createArray];
    
}

- (IBAction)buttonAskQuestion:(id)sender
{
    int currentRandom = arc4random()%3;
    
    while (currentRandom == lastNumber) {
        currentRandom = arc4random() %  3;
    }
    
    self.imageMagicEightBall.image = ((EightBallResults *)[arrayOfObjects objectAtIndex:currentRandom]).image;
    self.labelMessage.text = ((EightBallResults *)[arrayOfObjects objectAtIndex:currentRandom]).message;
    self.labelTitle.text = ((EightBallResults *)[arrayOfObjects objectAtIndex:currentRandom]).title;
    lastNumber = currentRandom;
    
}

- (IBAction)buttonRefresh:(id)sender
{
    self.imageMagicEightBall.image = [UIImage imageNamed:@"defaultMagicEightBall"];
    self.labelTitle.text = @"";
    self.labelMessage.text = @"";
    lastNumber = 0;
}

@end
