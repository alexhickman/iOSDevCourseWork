//
//  ViewController.h
//  TextFieldArrays
//
//  Created by Class on 10/7/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textWordAdd;

@property (weak, nonatomic) IBOutlet UILabel *labelError;


@end

