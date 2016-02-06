//
//  SecondVC.h
//  NotificationProjectOne
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FourthVC.h"

@interface SecondVC : UIViewController
@property (strong, nonatomic) NSString *firstVCsMessage;

@property (strong, nonatomic) id <aNewDelegate> delegateThingy;
@property (weak, nonatomic) IBOutlet UILabel *labelSecondVC;

@end
