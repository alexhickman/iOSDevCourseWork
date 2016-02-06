//
//  ViewController.m
//  StoryboardIBAction
//
//  Created by Hickman on 10/1/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "MathClass.h"

@interface ViewController ()

@end

@implementation ViewController

{
    //int x;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   // x = 0;
    MathClass *mathInstance = [[MathClass alloc]init];
    NSLog(@"%d", mathInstance.currentValue);
    [mathInstance addTwoToThisNumber:2];
    NSLog(@"%d", mathInstance.currentValue);
    
}
- (IBAction)pressedEnter:(id)sender
{
    
    //[MathClass addTwoToThisNumber:x];
    // x = x + 2;
    
}



@end
