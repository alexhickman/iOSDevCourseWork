//
//  APIManager.h
//  SingletonAndConstant
//
//  Created by Hickman on 10/29/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIManager : NSObject

+(APIManager *)sharedManager;
-(void)callsApi;

@end
