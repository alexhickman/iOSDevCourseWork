//
//  ViewController.h
//  FridaySolo
//
//  Created by Hickman on 10/9/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h> 

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFirstField;
@property (weak, nonatomic) IBOutlet UITextField *textSecondField;

@end

