//
//  FourthVC.m
//  NotificationProjectOne
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "FourthVC.h"

@implementation FourthVC

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter] addObserverForName:@"firstVCMessage" object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {self.labelOnFourth.text = note.object;}];

}

- (IBAction)buttonPressed:(id)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"delegate" object:nil];
    //[self.delegateThingy jumpingToTheBeginning];
}

@end
