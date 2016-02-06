//
//  Protocol.h
//  delgationDrinks
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//



#ifndef Protocol_h
#define Protocol_h

@class Drinks;

@protocol textToPassDelegate

-(void)passText:(Drinks *)stringToPass;
-(void)addItem:(Drinks *)stringToAdd;

@end



#endif /* Protocol_h */
