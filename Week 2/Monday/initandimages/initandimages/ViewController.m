//
//  ViewController.m
//  initandimages
//
//  Created by Hickman on 10/5/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "Tracker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    Tracker *newTracker = [[Tracker alloc] initWithName:@"Joe"];
    [newTracker loggingProperties];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:true];
    
    
    
    
}

@end
