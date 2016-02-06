//
//  APIManager.m
//  ParseAccounts
//
//  Created by Tatiana Jamison on 10/27/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "APIManager.h"

@interface APIManager ()

@end

@implementation APIManager

+ (void)retrieveObjectsOfClass:(NSString *)classToSearchFor currentTime:(NSDate *)time withSuccess:(completionBlock) blockCompleted
{
    NSMutableArray *objectsRetrieved = [[NSMutableArray alloc] init];
    
    PFQuery *query = [PFQuery queryWithClassName:@"BoardGame"];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *games, NSError *error)
     {
         if (!error)
         {
             // The find succeeded.
             NSLog(@"Successfully retrieved %lu games.", (unsigned long)games.count);
             // Do something with the found objects
             for (PFObject *game in games)
             {
                 BoardGame *gameConverted = [DataProcessor convertPFObjectIntoBoardGame:game];
                 NSLog(@"Added game %@", gameConverted.nameOfGame);
                 
                 [objectsRetrieved addObject:gameConverted];
             }
             NSDate *newtime = [NSDate date];
             blockCompleted(true, objectsRetrieved, newtime);
         }
         else
         {
             blockCompleted(false, objectsRetrieved, time);
         }
     }];
}

+ (void)addNewObjectsOfClass:(NSString *)classToSearchFor againstArray:(NSMutableArray *)arrayToCheckAgainst currentTime:(NSDate *)lastCheckedIn withSuccess:(completionBlock) blockCompleted
{
    NSMutableArray *updatedArray = arrayToCheckAgainst;
    PFQuery *query = [PFQuery queryWithClassName:@"BoardGames"];
    [query whereKey:@"createdAt" greaterThan:lastCheckedIn];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *games, NSError *error)
     {
         if (!error)
         {
             NSLog(@"Successfully retrieved %lu games.", (unsigned long)games.count);
             // Do something with the found objects
             for (PFObject *game in games)
             {
                 BoardGame *gameConverted = [DataProcessor convertPFObjectIntoBoardGame:game];
                 NSLog(@"Added game %@", gameConverted.nameOfGame);
                 [updatedArray addObject:gameConverted];
             }
             NSDate *newtime = [NSDate date];
             blockCompleted(true, updatedArray, newtime);
         }
         else
         {
             blockCompleted(false, updatedArray, lastCheckedIn);
         }
     }];
    
    NSDate *newtime = [NSDate date];
    blockCompleted(true, updatedArray, newtime);
}

+ (void)compareObjectsOfClass:(NSString *)classToSearchFor againstArray:(NSMutableArray *)arrayToCheckAgainst currentTime:(NSDate *)lastCheckedIn withSuccess:(completionBlock) blockCompleted
{

}

@end
