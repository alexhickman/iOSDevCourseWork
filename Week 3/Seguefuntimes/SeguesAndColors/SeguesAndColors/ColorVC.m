//
//  ColorVC.m
//  SeguesAndColors
//
//  Created by Tatiana Jamison on 10/15/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

// when you go back, animate color change (maybe fade back to white?)

#import "ColorVC.h"

@interface ColorVC ()

@end

@implementation ColorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.textField.text = self.color.customName;
    self.label.text = @"Hi, GREG!!!";

    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[UIImage imageNamed:@"bowtie"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(60, 0) forBarMetrics:UIBarMetricsDefault];
    
    
    [UIView animateWithDuration:4 animations:^{
        self.view.backgroundColor = self.color.customColor;
    }];
    
    [self.textField becomeFirstResponder];
    
    [self spin1];
}

- (void)spin1 {
    [UIView animateWithDuration:2 delay:0 options:UIViewAnimationOptionCurveLinear|UIViewAnimationOptionAllowUserInteraction animations:^{
        self.textField.transform = CGAffineTransformRotate(self.textField.transform, M_PI);
    } completion:^(BOOL finished) {
        [self spin1];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.color.customName = self.textField.text;
    [self.navigationController popViewControllerAnimated:TRUE];
    return TRUE;
}


@end
