//
//  SecondVC.h
//  delgationDrinks
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Protocol.h"
#import "Drinks.h"

@interface SecondVC : UIViewController

@property (strong,nonatomic) Drinks *selectedDrink;
@property (weak, nonatomic) IBOutlet UILabel *labelSVC;
@property (weak, nonatomic) IBOutlet UITextField *textFieldNewPhrase;

@property (weak, nonatomic) IBOutlet UITextField *textFieldNewName;
@property (strong, nonatomic) id <textToPassDelegate> delegateCustom;

@end
