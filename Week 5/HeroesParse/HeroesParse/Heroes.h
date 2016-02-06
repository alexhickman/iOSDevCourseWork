//
//  Heroes.h
//  HeroesParse
//
//  Created by Hickman on 10/26/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Heroes : NSObject

@property (strong, nonatomic) NSString *nameOfHero;
@property (strong, nonatomic) NSString *powerOfHero;
@property (strong, nonatomic) UIImage *imageOfHero;

- (instancetype)initWith:(NSString *)name and:(NSString *)power and:(UIImage *)image;
+ (Heroes *)makeHeroNamed:(NSString *)name withPower:(NSString *)power withImage:(UIImage *)image;

@end
