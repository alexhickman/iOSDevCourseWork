//
//  ViewController.h
//  FridayChallengeTakeTwo
//
//  Created by Hickman on 10/23/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondVC.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelConstraintTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelConstraintTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelConstraintLeading;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelConstraintHeight;

@property (weak, nonatomic) IBOutlet UILabel *labelSliding;

@end

