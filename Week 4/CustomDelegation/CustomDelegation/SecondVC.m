//
//  SecondVC.m
//  CustomDelegation
//
//  Created by Hickman on 10/19/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "SecondVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender {
    NSLog(@"Button Pressed");
    
    [self.delegateCustom superImportantMessage:@"YO!"];
    
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
