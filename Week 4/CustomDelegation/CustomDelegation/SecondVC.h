//
//  SecondVC.h
//  CustomDelegation
//
//  Created by Hickman on 10/19/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol customDelegate

-(void)superImportantMessage:(NSString *)message;

@end

@interface SecondVC : UIViewController

@property (strong, nonatomic) id <customDelegate> delegateCustom;

@end
