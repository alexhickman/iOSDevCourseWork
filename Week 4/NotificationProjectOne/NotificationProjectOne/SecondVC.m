//
//  SecondVC.m
//  NotificationProjectOne
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "SecondVC.h"
#import "ThirdVC.h"

@implementation SecondVC
{
    int goingBack;
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidLoad];
    goingBack++;
    [[NSNotificationCenter defaultCenter] addObserverForName:@"firstVCMessage" object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {self.labelSecondVC.text = note.object;}];

    if (goingBack > 1)
    {
        [UIView animateWithDuration:5 animations:^{
            self.labelSecondVC.frame = CGRectMake(self.labelSecondVC.frame.origin.x, self.labelSecondVC.frame.origin.y, self.labelSecondVC.frame.size.width, self.labelSecondVC.frame.size.height-40);}];
    }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ThirdVC *tvc = [segue destinationViewController];
    tvc.delegateThingy = self.delegateThingy;
}
@end
