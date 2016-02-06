//
//  ViewController.m
//  CustomDelegation
//
//  Created by Hickman on 10/19/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)superImportantMessage:(NSString *)message
{
    NSLog(@"%@", message);
    self.labelVC.text = message;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondVC *svc = [segue destinationViewController];
    
    svc.delegateCustom = self;
}

@end
