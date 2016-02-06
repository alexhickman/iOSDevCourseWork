//
//  DungeonLevelOneVC.m
//  PairProgrammingWithAlexAndBrandon
//
//  Created by Tatiana Jamison on 10/15/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "DungeonLevelOneVC.h"
#import "ViewController.h"

@interface DungeonLevelOneVC ()

@end

@implementation DungeonLevelOneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = self.dataFromSender;
    self.navigationItem.title = [NSString stringWithFormat:@"Level %d", self.level];
    
    if (!self.buttonDeeper) {
        [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(descendALevel) userInfo:nil repeats:NO];
    }
}

-(void)descendALevel
{
    [self performSegueWithIdentifier:@"goDeeper" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    id vc = [segue destinationViewController];
    
    
    if ([vc isKindOfClass:[UINavigationController class]])
    {
        UINavigationController *nv = (UINavigationController *)vc;
        vc = nv.topViewController;
    }

    if ([vc isKindOfClass:[DungeonLevelOneVC class]])
    {
        DungeonLevelOneVC *dvc = (DungeonLevelOneVC *)vc;
        dvc.dataFromSender = self.label.text;
        dvc.level = self.level + 1;
    }
    else if ([vc isKindOfClass:[ViewController class]])
    {
        ViewController *dvc = (ViewController *)vc;
        dvc.dataFromSender = self.label.text;
        dvc.level = self.level + 1;
    }
}

- (IBAction)pressDeeper:(id)sender
{
    [self descendALevel];
}

- (IBAction)pressEscape:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
