//
//  FourthVC.h
//  NotificationProjectOne
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol aNewDelegate

-(void)jumpingToTheBeginning;

@end

@interface FourthVC : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelOnFourth;

@property (strong, nonatomic) id <aNewDelegate> delegateThingy;


@end
