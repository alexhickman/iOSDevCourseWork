//
//  DungeonLevelTwoVC.m
//  PairProgrammingWithAlexAndBrandon
//
//  Created by Tatiana Jamison on 10/15/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "DungeonLevelTwoVC.h"
#import "DungeonLevelThreeVC.h"

@interface DungeonLevelTwoVC ()

@end

@implementation DungeonLevelTwoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = self.dataFromSender;
    
    self.navigationItem.title = @"Level Two";
    
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(goToLevelThree) userInfo:nil repeats:NO];
}

-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"in L2, i have %d", [[self.navigationController viewControllers] count]);
}

-(void)goToLevelThree
{
    [self performSegueWithIdentifier:@"descendToDungeonLevelThree" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DungeonLevelThreeVC *dvc = [segue destinationViewController];
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
