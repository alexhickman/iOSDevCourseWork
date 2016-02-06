//
//  Heroes.h
//  TableViewExpandableHeroes
//
//  Created by Class on 10/14/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Heroes : NSObject

@property(strong, nonatomic)NSString *nameOfHero;
@property(strong, nonatomic)NSString *powerOfHero;
@property(strong, nonatomic)UIImage *imageOfHero;
@property(nonatomic)BOOL isGood;



@end
