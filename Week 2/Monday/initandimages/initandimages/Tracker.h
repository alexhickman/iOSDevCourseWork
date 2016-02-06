//
//  Tracker.h
//  initandimages
//
//  Created by Hickman on 10/5/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tracker : NSObject

@property (strong, nonatomic) NSString *hairColour;

-(void)loggingProperties;

- (instancetype)initWithName: (NSString *)newName;


@end
