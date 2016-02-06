//
//  ViewController.h
//  PickerViewParty
//
//  Created by Hickman on 10/8/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textUserInput;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerviewStuff;

@end

