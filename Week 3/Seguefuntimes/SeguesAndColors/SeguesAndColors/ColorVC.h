//
//  ColorVC.h
//  SeguesAndColors
//
//  Created by Tatiana Jamison on 10/15/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "Color.h"

@interface ColorVC : ViewController <UITextFieldDelegate>

@property (strong, nonatomic) Color *color;
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end
