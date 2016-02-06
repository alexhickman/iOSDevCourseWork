//
//  DungeonLevelThreeVC.m
//  PairProgrammingWithAlexAndBrandon
//
//  Created by Tatiana Jamison on 10/15/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "DungeonLevelThreeVC.h"
#import "DungeonLevelFourVC.h"

@interface DungeonLevelThreeVC ()

@end

@implementation DungeonLevelThreeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = self.dataFromSender;
    
    self.navigationItem.title = @"Level Three";
    
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(goToLevelFour) userInfo:nil repeats:NO];
}

-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"in L3, i have %d", [[self.navigationController viewControllers] count]);
}

-(void)goToLevelFour
{
    [self performSegueWithIdentifier:@"descendToDungeonLevelFour" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DungeonLevelFourVC *dvc = [segue destinationViewController];
    dvc.dataFromSender = self.label.text;
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
