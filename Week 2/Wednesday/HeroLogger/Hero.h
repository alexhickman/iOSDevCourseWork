//
//  Hero.h
//  HeroLogger
//
//  Created by Class on 10/7/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hero : NSObject

@property(strong, nonatomic)NSString *name;
@property(strong, nonatomic)NSString *power;
@property(strong, nonatomic)NSString *spandexOfChoice;
@property(nonatomic)int strength;
@property(nonatomic)int agility;

+(Hero *)createHeroWithName:(NSString *)name power:(NSString *)power spandex:(NSString *)spandex strength:(int)strength agility:(int)agility;


@end
