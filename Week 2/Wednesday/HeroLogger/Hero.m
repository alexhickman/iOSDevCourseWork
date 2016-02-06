//
//  Hero.m
//  HeroLogger
//
//  Created by Class on 10/7/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "Hero.h"

@implementation Hero


+(Hero *)createHeroWithName:(NSString *)name power:(NSString *)power spandex:(NSString *)spandex strength:(int)strength agility:(int)agility
{
    Hero *newHero;
    newHero = [[Hero alloc]init];
    newHero.name = name;
    newHero.power = power;
    newHero.spandexOfChoice = spandex;
    newHero.strength = strength;
    newHero.agility = agility;
    return newHero;

}


@end
