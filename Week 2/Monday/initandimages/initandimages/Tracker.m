//
//  Tracker.m
//  initandimages
//
//  Created by Hickman on 10/5/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "Tracker.h"

@interface Tracker ()

@property (strong, nonatomic) NSString *currentName;

@end

@implementation Tracker
{
    int weight;
}

- (instancetype)initWithName: (NSString *)newName
{
    self = [super init];
    if (self) {
        self.currentName = newName;
        weight = 150;
        self.hairColour = @"Brown";
    }
    return self;
}

-(void)loggingProperties
{
    NSLog(@"current name is %@, current hair colour is %@, with weight of %d", self.currentName, self.hairColour, weight);
}

@end
