//
//  NewWord.h
//  TextFieldArrays
//
//  Created by Class on 10/7/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewWord : NSObject
@property (nonatomic) NSUInteger stringLength;
@property(strong, nonatomic) NSString *string;
-(NewWord *)yourNewWord:(NSString *)textField;

@end
