//
//  ViewController.m
//  TuesdaySandbox
//
//  Created by Hickman on 10/6/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "Tracker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    Tracker *newTracker = [[Tracker alloc]init];
//    newTracker.hairColour = @"Brown";
//    
//    NSArray *newArray = @[newTracker];
//    
//    NSString *hairColour = ((Tracker *)[newArray objectAtIndex:0]).hairColour;
//    NSLog(@"%@", hairColour);
//    
//    newTracker.hairColour = @"Red";
//    
//    NSString *secondHairColour = ((Tracker *)[newArray objectAtIndex:0]).hairColour;
//    NSLog(@"%@", secondHairColour);

    
    NSMutableArray *newArray = [[NSMutableArray alloc]init];
 
    Tracker *trackedObject = [[Tracker alloc]init];
    trackedObject.hairColour = @"Brown";
    [newArray addObject:trackedObject];
    
    Tracker *secondTrackedObject = [[Tracker alloc]init];
    secondTrackedObject.hairColour = @"Red";
    [newArray addObject:secondTrackedObject];
    
    Tracker *thirdTrackedObject = [[Tracker alloc]init];
    thirdTrackedObject.hairColour = @"Blonde";
    [newArray addObject:thirdTrackedObject];
    
    Tracker *fourthTrackedObject = [[Tracker alloc]init];
    fourthTrackedObject.hairColour = @"Green";
    [newArray addObject:fourthTrackedObject];
    
    [newArray removeObjectAtIndex:2];
    
    Tracker *objectFromArray = [newArray objectAtIndex:2];
    NSLog(@"%@", objectFromArray.hairColour);
    
    for (NSString *stringInArray in newArray)
    {
        NSLog(@"String: %@", stringInArray);
    }
    for (Tracker *stringInArray in newArray)
    {
        NSLog(@"String: %@", stringInArray.hairColour);
    }
   
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return YES;
}
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
@end
