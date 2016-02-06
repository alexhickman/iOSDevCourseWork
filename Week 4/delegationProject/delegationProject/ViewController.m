//
//  ViewController.m
//  delegationProject
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.labelMain.text = @"Woot!";
    
}

-(void)messageToPass:(NSString *)message
{
    self.labelMain.text = message;
}

-(void)colorToPass:(UIColor *)color
{
    self.view.backgroundColor = color;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   
        SecondVC *svc = [segue destinationViewController];
        svc.delegateCustom = self;
        svc.textFieldStart = self.labelMain.text;
        
}


@end
