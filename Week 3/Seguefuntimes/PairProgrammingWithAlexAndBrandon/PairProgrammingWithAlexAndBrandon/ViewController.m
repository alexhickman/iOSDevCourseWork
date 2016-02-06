//
//  ViewController.m
//  PairProgrammingWithAlexAndBrandon
//
//  Created by Tatiana Jamison on 10/15/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "DungeonLevelOneVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = self.dataFromSender;
}

-(void)viewDidAppear:(BOOL)animated {    
    self.navigationItem.title = [NSString stringWithFormat:@"Level %d", self.level];
}

- (IBAction)pressedCommit:(id)sender {
    self.label.text = self.textField.text;
    
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(goToLevelOne) userInfo:nil repeats:NO];
}
     
-(void)goToLevelOne
{
    [self performSegueWithIdentifier:@"enterTheDungeon" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DungeonLevelOneVC *dvc = [segue destinationViewController];
    dvc.dataFromSender = self.label.text;
    dvc.level = self.level + 1;
}

@end
