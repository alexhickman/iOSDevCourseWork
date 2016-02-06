//
//  NewColour.h
//  CellExpander
//
//  Created by Hickman on 10/14/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NewColour : NSObject

@property (strong, nonatomic) NSString *colourName;
@property (strong, nonatomic) UIColor *colourActual;
@property (strong, nonatomic) NSString *colourProverb;

- (instancetype)initColourWith:(NSString *)colourName and:(UIColor *)actualColour and:(NSString *)proverb;

+(NSMutableArray *)createColourArray;

@end
