//
//  DataProcessor.m
//  ParseAccounts
//
//  Created by Tatiana Jamison on 10/27/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "DataProcessor.h"

@implementation DataProcessor

+ (BoardGame *)convertPFObjectIntoBoardGame:(PFObject *)objectToProcess
{
    BoardGame *convertedBoardGame = [[BoardGame alloc] init];
    
    convertedBoardGame.nameOfGame = objectToProcess[@"nameOfBoardGame"];
    convertedBoardGame.descriptionOfGame = objectToProcess[@"descriptionOfBoardGame"];
    convertedBoardGame.objectID = objectToProcess.objectId;
    convertedBoardGame.lastUpdated = objectToProcess.updatedAt;
    
    return convertedBoardGame;
}

@end
