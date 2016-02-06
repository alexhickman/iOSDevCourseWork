//
//  FourthVC.h
//  FridayChallengeTakeTwo
//
//  Created by Hickman on 10/23/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomProtocol.h"

@interface FourthVC : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) id <tableViewDelegate> tableViewEditDelegate;

@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (strong, nonatomic) NSString *textToDisplay;
@property (weak, nonatomic) IBOutlet UITextField *textFieldFour;
@property (weak, nonatomic) IBOutlet UIButton *buttonEdit;
@property (weak, nonatomic) IBOutlet UIButton *buttonSave;
@property (weak, nonatomic) IBOutlet UIButton *buttonDontSave;
@property (weak, nonatomic) IBOutlet UIButton *buttonRevertToOriginal;

@end
