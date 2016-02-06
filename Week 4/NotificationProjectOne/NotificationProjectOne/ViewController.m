//
//  ViewController.m
//  NotificationProjectOne
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "SecondVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [[NSNotificationCenter defaultCenter] addObserverForName:@"delegate" object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        NSLog(@"I've jumped to the beginning");
        [[NSNotificationCenter defaultCenter] postNotificationName:@"firstVCMessage" object:@"Hey fourthVC write what I say. FirstVC demands it!"];
    }];
    
   }

-(void)jumpingToTheBeginning
{
    NSLog(@"I've jumped to the beginning");
    [[NSNotificationCenter defaultCenter] postNotificationName:@"firstVCMessage" object:@"Hey fourthVC write what I say. FirstVC demands it!"];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondVC *svc = [segue destinationViewController];
    svc.delegateThingy = self;
}

@end
