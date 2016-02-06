//
//  APIManager.h
//  ParseAccounts
//
//  Created by Tatiana Jamison on 10/27/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
#import "BoardGame.h"
#import "DataProcessor.h"

@interface APIManager : NSObject

//+ (PFQuery *)getGamesInBackground;

@property (strong, nonatomic) NSDate *lastConnectionTime;

typedef void(^completionBlock)(BOOL success, NSMutableArray *processedGames, NSDate *lastUpdated);

+ (void)retrieveObjectsOfClass:(NSString *)classToSearchFor currentTime:(NSDate *)time withSuccess:(completionBlock) blockCompleted;

+ (void)addNewObjectsOfClass:(NSString *)classToSearchFor againstArray:(NSMutableArray *)arrayToCheckAgainst currentTime:(NSDate *)lastCheckedIn withSuccess:(completionBlock) blockCompleted;

+ (void)compareObjectsOfClass:(NSString *)classToSearchFor againstArray:(NSMutableArray *)arrayToCheckAgainst currentTime:(NSDate *)lastCheckedIn withSuccess:(completionBlock) blockCompleted;
@end
