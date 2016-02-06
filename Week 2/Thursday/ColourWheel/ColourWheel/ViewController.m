//
//  ViewController.m
//  ColourWheel
//
//  Created by Hickman on 10/8/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "NewPickerObject.h"

@interface ViewController ()
{
    NSMutableArray *colours;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    colours = [NewPickerObject makeArray];
   
}

- (IBAction)buttonRando:(id)sender {
    int randomNumber = arc4random() % ([colours count]);
    [self.pickerColours selectRow:randomNumber inComponent:0 animated:YES];
    
    self.view.backgroundColor = ((NewPickerObject *)[colours objectAtIndex:randomNumber]).pickerColour;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [colours count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NewPickerObject *objectPulledFromArrayForRow = [colours objectAtIndex:row];

    NSString *stringFromProperty = objectPulledFromArrayForRow.pickerName;

    return stringFromProperty;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.view.backgroundColor = ((NewPickerObject *)[colours objectAtIndex:row]).pickerColour;
}

@end
