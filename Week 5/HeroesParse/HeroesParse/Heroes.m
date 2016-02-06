//
//  Heroes.m
//  HeroesParse
//
//  Created by Hickman on 10/26/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "Heroes.h"

@implementation Heroes

- (instancetype)initWith:(NSString *)name and:(NSString *)power and:(UIImage *)image
{
    self = [super init];
    if (self) {
        self.nameOfHero = name;
        self.powerOfHero = power;
        self.imageOfHero = image;
    }
    return self;
}

+ (Heroes *)makeHeroNamed:(NSString *)name withPower:(NSString *)power withImage:(UIImage *)image
{
    Heroes *newHero = [[Heroes alloc]initWith:name and:power and:image];
    return newHero;
}

@end
