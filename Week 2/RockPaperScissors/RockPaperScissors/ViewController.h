//
//  ViewController.h
//  RockPaperScissors
//
//  Created by Hickman on 10/6/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelWinner;
@property (weak, nonatomic) IBOutlet UIImageView *imageComputerChoice;
@property (weak, nonatomic) IBOutlet UILabel *labelYourChoice;
@property (weak, nonatomic) IBOutlet UILabel *labelComputerChoice;

@end

