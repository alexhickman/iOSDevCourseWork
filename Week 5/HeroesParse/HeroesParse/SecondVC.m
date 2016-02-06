//
//  SecondVC.m
//  HeroesParse
//
//  Created by Hickman on 10/26/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "SecondVC.h"

@implementation SecondVC

-(void)viewDidLoad
{
    self.backGroundImage.image = self.imageOfHero;
    self.label.text = self.powerOfHero;
}
- (IBAction)buttonPressed:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
