//
//  SecondVC.h
//  delegationProject
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>

//1.)make protocol; what methods are available for the delegate
@protocol secondVCDelegate <NSObject>

//3.)declaring methods; the methods that will be a part of the protocol
-(void)messageToPass:(NSString *)message;
-(void)colorToPass:(UIColor *)color;

@end
@interface SecondVC : UIViewController <UITextFieldDelegate>

//2.) declaring delegate (sign up sheet "whoever wants to do this job, put name here"); way of communicating
@property(strong, nonatomic) id <secondVCDelegate> delegateCustom;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSString *textFieldStart;

@end
