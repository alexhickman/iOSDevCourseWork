//
//  NewPickerObject.m
//  ColourWheel
//
//  Created by Hickman on 10/8/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "NewPickerObject.h"



@implementation NewPickerObject


-(NewPickerObject *)newObjectToAddWith:(NSString *)name andColour:(UIColor *)colour
{
    NewPickerObject *newObject = [[NewPickerObject alloc]init];
    newObject.pickerColour = colour;
    newObject.pickerName = name;
    return newObject;
}

+(NSMutableArray *)makeArray
{
    NSMutableArray *colours = [[NSMutableArray alloc]init];
    
    NewPickerObject *objectToAdd = [[NewPickerObject alloc]init];
    
    [colours addObject:[objectToAdd newObjectToAddWith:@"Orange" andColour:[UIColor orangeColor]]];
    [colours addObject:[objectToAdd newObjectToAddWith:@"Red" andColour:[UIColor redColor]]];
    [colours addObject:[objectToAdd newObjectToAddWith:@"Blue" andColour:[UIColor blueColor]]];
    [colours addObject:[objectToAdd newObjectToAddWith:@"Green" andColour:[UIColor greenColor]]];
    [colours addObject:[objectToAdd newObjectToAddWith:@"Purple" andColour:[UIColor purpleColor]]];
    
    return colours;
}

@end
