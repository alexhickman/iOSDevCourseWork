//
//  ViewController.m
//  PickerViewParty
//
//  Created by Hickman on 10/8/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *anArray;
    NSUserDefaults *defaults;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    anArray = [[NSMutableArray alloc]init];
    
    defaults = [NSUserDefaults standardUserDefaults]; //pulling stored area from device
    
    anArray = [[defaults arrayForKey:@"One"] mutableCopy];
    //    [anArray addObject:@"Apple"];
    //    [anArray addObject:@"Banana"];
    //    [anArray addObject:@"Orange"];
   
}
- (IBAction)buttonInput:(id)sender {
    [self userInput];
}
- (IBAction)buttonRefresh:(id)sender {
    anArray = [[NSMutableArray alloc]init];
    [self userInput];
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [anArray count];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return anArray[row];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self userInput];
    return YES;
}

-(void)userInput
{
    //adding User input to array
    [anArray addObject:self.textUserInput.text];
    [self.pickerviewStuff reloadAllComponents];
    self.textUserInput.text = @"";
    [self.view endEditing:YES];
    
    //saving data
    [defaults setObject:anArray forKey:@"One"]; //setting information
    [defaults synchronize]; //committing changes
    
}


@end
