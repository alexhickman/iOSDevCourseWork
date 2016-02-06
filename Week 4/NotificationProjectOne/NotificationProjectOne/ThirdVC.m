//
//  ThirdVC.m
//  NotificationProjectOne
//
//  Created by Hickman on 10/20/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ThirdVC.h"


@implementation ThirdVC
{
    int goingBack;
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidLoad];
    goingBack++;
    [[NSNotificationCenter defaultCenter] addObserverForName:@"firstVCMessage" object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {self.labelThirdVC.text = note.object;}];
    
    if (goingBack > 1) {
        
        [UIView animateWithDuration:5 animations:^{
            self.labelThirdVC.frame = CGRectMake(self.labelThirdVC.frame.origin.x - 40, self.labelThirdVC.frame.origin.y, self.labelThirdVC.frame.size.width, self.labelThirdVC.frame.size.height);}];
    }

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    FourthVC *fvc = [segue destinationViewController];
    fvc.delegateThingy = self.delegateThingy;
}

@end
