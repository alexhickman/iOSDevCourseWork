//
//  DataProcessor.h
//  ParseAccounts
//
//  Created by Tatiana Jamison on 10/27/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
#import "BoardGame.h"

@interface DataProcessor : NSObject

+ (BoardGame *)convertPFObjectIntoBoardGame:(PFObject *)objectToProcess;

@end
