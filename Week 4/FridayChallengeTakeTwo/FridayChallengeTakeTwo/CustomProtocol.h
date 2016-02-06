//
//  CustomProtocol.h
//  FridayChallengeTakeTwo
//
//  Created by Hickman on 10/23/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#ifndef CustomProtocol_h
#define CustomProtocol_h

@protocol tableViewDelegate

@optional
-(void)addStringToTableView:(NSString *)stringToAdd;
-(void)editTableViewWith:(NSString *)editedString;

@end

#endif /* CustomProtocol_h */
