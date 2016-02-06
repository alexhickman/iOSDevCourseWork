//
//  ThirdVC.h
//  NotificationProjectOne
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FourthVC.h"

@interface ThirdVC : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelThirdVC;

@property (strong, nonatomic) id <aNewDelegate> delegateThingy;


@end
