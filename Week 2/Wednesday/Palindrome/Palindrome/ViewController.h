//
//  ViewController.h
//  Palindrome
//
//  Created by Class on 10/7/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textInput;
@property (weak, nonatomic) IBOutlet UILabel *labelPalindromeOrNot;
@property (weak, nonatomic) IBOutlet UILabel *labelYesTally;
@property (weak, nonatomic) IBOutlet UILabel *labelNoTally;
@property (weak, nonatomic) IBOutlet UILabel *labelError;


@end

