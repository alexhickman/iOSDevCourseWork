//
//  NewPickerObject.h
//  ColourWheel
//
//  Created by Hickman on 10/8/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NewPickerObject : NSObject

@property (strong, nonatomic) NSString *pickerName;
@property (strong, nonatomic) UIColor *pickerColour;

-(NewPickerObject *)newObjectToAddWith:(NSString *)name andColour:(UIColor *)colour;
+(NSMutableArray *)makeArray;

@end
