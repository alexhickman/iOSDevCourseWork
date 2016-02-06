//
//  APIManager.m
//  SingletonAndConstant
//
//  Created by Hickman on 10/29/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "APIManager.h"

@implementation APIManager

static APIManager *sMyApi;

+(APIManager *)sharedManager
{
    static dispatch_once_t tokenToRunOnlyOnce;
    
    dispatch_once(&tokenToRunOnlyOnce, ^{
        NSLog(@"Hello from APIManager");
        sMyApi = [[APIManager alloc]init];
    });
    return sMyApi;
}

-(void)callsApi
{
    NSLog(@"connects to server");
}

@end
