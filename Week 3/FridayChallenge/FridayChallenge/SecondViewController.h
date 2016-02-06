//
//  SecondViewController.h
//  FridayChallenge
//
//  Created by Hickman on 10/16/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Heroes.h"

@interface SecondViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) Heroes *currentHero;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UILabel *labelPower;

@property (weak, nonatomic) IBOutlet UITextField *textFieldName;

@end
