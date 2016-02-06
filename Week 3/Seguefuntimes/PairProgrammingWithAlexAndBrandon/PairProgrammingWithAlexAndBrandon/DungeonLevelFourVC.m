//
//  DungeonLevelFourVC.m
//  PairProgrammingWithAlexAndBrandon
//
//  Created by Tatiana Jamison on 10/15/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "DungeonLevelFourVC.h"

@interface DungeonLevelFourVC ()

@end

@implementation DungeonLevelFourVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"Level Four";
    
    self.label.text = self.dataFromSender;
}

-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"in L5, i have %d", [[self.navigationController viewControllers] count]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
