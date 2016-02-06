//
//  ViewController.m
//  ThursdaySandbox
//
//  Created by Hickman on 10/8/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableDictionary *newDictionary = [[NSMutableDictionary alloc]init];
    
    [newDictionary setObject:@"Test" forKey:@"one"];

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults]; //pulling stored area from device
    [defaults setObject:@"Test" forKey:@"One"]; //setting information
    [defaults synchronize]; //committing changes

}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return @"Awesome";
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 8;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

@end
