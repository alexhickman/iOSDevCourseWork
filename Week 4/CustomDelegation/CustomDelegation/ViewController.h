//
//  ViewController.h
//  CustomDelegation
//
//  Created by Hickman on 10/19/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondVC.h"

@interface ViewController : UIViewController <customDelegate>

@property (weak, nonatomic) IBOutlet UILabel *labelVC;

@end

