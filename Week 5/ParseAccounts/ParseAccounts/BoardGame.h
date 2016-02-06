//
//  BoardGame.h
//  ParseAccounts
//
//  Created by Tatiana Jamison on 10/27/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BoardGame : NSObject

@property (strong, nonatomic) NSString *nameOfGame;
@property (strong, nonatomic) NSString *descriptionOfGame;
@property (strong, nonatomic) NSString *objectID;
@property (strong, nonatomic) NSDate *lastUpdated;

@end
