//
//  Color.h
//  SeguesAndColors
//
//  Created by Tatiana Jamison on 10/15/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Color : NSObject

@property (strong, nonatomic) NSString *customName;
@property (strong, nonatomic) UIColor *customColor;

+(NSArray *)getArrayOfColors;

@end
