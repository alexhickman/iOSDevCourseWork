//
//  ViewController.m
//  NotificationCenter
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter] addObserverForName:@"Frequency" object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note)
    {
    NSLog(@"Heard freqency, with object %@", note.object);
    }];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(testMethod: ) name:@"Frequency" object:nil];
    
}

-(void)testMethod:(NSNotification *)notification
{
    NSLog(@"Different message with %@", notification.object);
}

- (IBAction)buttonPressed:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Frequency" object:@"Info To Send"];
    
    [UIView animateWithDuration:3 animations:^{
        self.label.frame = CGRectMake(350, 150, 20,15);
    }];
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
