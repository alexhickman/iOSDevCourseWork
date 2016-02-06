//
//  ViewController.h
//  HeroLogger
//
//  Created by Class on 10/7/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *textName;
@property (strong, nonatomic) IBOutlet UIView *textPower;
@property (strong, nonatomic) IBOutlet UIView *textSpandex;
@property (strong, nonatomic) IBOutlet UIView *textStrength;
@property (strong, nonatomic) IBOutlet UIView *textAgility;

@property (weak, nonatomic) IBOutlet UITextField *textFieldName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPower;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSpandex;
@property (weak, nonatomic) IBOutlet UITextField *textFieldStrength;
@property (weak, nonatomic) IBOutlet UITextField *textFieldAgility;

@property (weak, nonatomic) IBOutlet UILabel *labelErrorMessage;



@end

