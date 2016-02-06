//
//  ThirdVC.h
//  FridayChallengeTakeTwo
//
//  Created by Hickman on 10/23/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomProtocol.h"

@interface ThirdVC : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) id <tableViewDelegate> tableViewAddedDelegate;

@property (weak, nonatomic) IBOutlet UITextField *textFieldContent;
@property (strong, nonatomic) NSString *itemToAdd;

@end


