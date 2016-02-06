//
//  ThirdVC.h
//  delgationDrinks
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Protocol.h"
#import "ViewController.h"
#import "Drinks.h"


@interface ThirdVC : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPhrase;

@property (strong, nonatomic) Drinks *aNewDrink;

@property (strong, nonatomic) id <textToPassDelegate> delegateCustom;

@end
