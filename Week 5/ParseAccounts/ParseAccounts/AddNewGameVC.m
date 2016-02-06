//
//  ViewController.m
//  ParseAccounts
//
//  Created by Tatiana Jamison on 10/27/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "AddNewGameVC.h"

@interface AddNewGameVC ()

@end

@implementation AddNewGameVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)pressedAdd:(id)sender {
    
    PFObject *newBoardGame = [PFObject objectWithClassName:@"BoardGame"];
    newBoardGame[@"nameOfBoardGame"] = self.textFieldName.text;
    newBoardGame[@"descriptionOfBoardGame"] = self.textFieldDescription.text;
    
    [newBoardGame saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        if (succeeded) {
            self.textFieldDescription.text = @"";
            self.textFieldName.text = @"";
            [self.navigationController popViewControllerAnimated:true];
        }
    }];
    
    
}

@end
