//
//  ViewController.m
//  SettingFrames
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated
{
    [UIView animateWithDuration:4 animations:^{
        self.labelOfAwesome.frame = CGRectMake(0, 0, self.labelOfAwesome.frame.size.width, self.labelOfAwesome.frame.size.height);
    }];
    
    [UIView animateWithDuration:5 delay:5 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.labelOfAwesome.frame = CGRectMake(100, 100, self.view.frame.size.width *.9, self.view.frame.size.height *.9);
    } completion:nil];
}



@end
