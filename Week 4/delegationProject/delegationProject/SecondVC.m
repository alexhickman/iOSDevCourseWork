//
//  SecondVC.m
//  delegationProject
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "SecondVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textField.text = self.textFieldStart;
}
- (IBAction)buttonSecondVC:(id)sender {
    [self.delegateCustom messageToPass:self.textField.text];
    
    [self.delegateCustom colorToPass:[UIColor redColor]];
        
    [self.navigationController popViewControllerAnimated:YES];
    
    //modal
    [self dismissViewControllerAnimated:true completion:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
