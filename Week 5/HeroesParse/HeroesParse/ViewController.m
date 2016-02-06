//
//  ViewController.m
//  HeroesParse
//
//  Created by Hickman on 10/26/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
{
    NSMutableArray *arrayOfHeroes;
    NSMutableArray *arrayOfVillains;
    NSIndexPath *currentIndex;
}


@end

@implementation ViewController
- (IBAction)buttonPressed:(id)sender {
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayOfHeroes = [[NSMutableArray alloc]init];
    arrayOfVillains = [[NSMutableArray alloc]init];
    
    PFQuery *query = [PFQuery queryWithClassName:@"Heroes"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *heroess, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %lu villians.", (unsigned long)heroess.count);
            for (PFObject *hero in heroess)
            {
                NSString *name = hero[@"nameOfHero"];
                NSString *power = hero[@"powerOfHero"];
                [hero[@"imageOfHero"] getDataInBackgroundWithBlock:^(NSData *imageData, NSError *error) {
                    if (!error) {
                        UIImage *image = [UIImage imageWithData:imageData];
                        [arrayOfHeroes addObject:(Heroes *)[Heroes makeHeroNamed:name withPower:power withImage:image]];
                    }
                    [self.tableView reloadData];
                }];
            }
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    PFQuery *queryTwo = [PFQuery queryWithClassName:@"Villains"];
    [queryTwo findObjectsInBackgroundWithBlock:^(NSArray *villains, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %lu villians.", (unsigned long)villains.count);
            for (PFObject *villain in villains)
            {
                NSString *name = villain[@"nameOfVillain"];
                NSString *power = villain[@"powerOfVillain"];
                [villain[@"imageOfVillain"] getDataInBackgroundWithBlock:^(NSData *imageData, NSError *error) {
                    if (!error) {
                        UIImage *image = [UIImage imageWithData:imageData];
                        [arrayOfVillains addObject:(Heroes *)[Heroes makeHeroNamed:name withPower:power withImage:image]];
                    }
                    [self.tableView reloadData];
                }];
            }
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
}

#pragma mark TableView
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    if (indexPath.section == 0) {
        cell.textLabel.text = ((Heroes *)arrayOfHeroes[indexPath.row]).nameOfHero;
        cell.imageView.image = ((Heroes *)arrayOfHeroes[indexPath.row]).imageOfHero;
        return cell;
    }
    else
    {
        cell.textLabel.text = ((Heroes *)arrayOfVillains[indexPath.row]).nameOfHero;
        cell.imageView.image = ((Heroes *)arrayOfVillains[indexPath.row]).imageOfHero;
        return cell;
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return [arrayOfHeroes count];
    }
    else {
        return [arrayOfVillains count];
    }
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    currentIndex = indexPath;
    [self performSegueWithIdentifier:@"modalGo" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondVC *svc = [segue destinationViewController];
    if (currentIndex.section == 0)
    {
        svc.imageOfHero = ((Heroes *)(arrayOfHeroes[currentIndex.row])).imageOfHero;
        svc.powerOfHero = ((Heroes *)(arrayOfHeroes[currentIndex.row])).powerOfHero;
    }
    else
    {
        svc.imageOfHero = ((Heroes *)(arrayOfVillains[currentIndex.row])).imageOfHero;
        svc.powerOfHero = ((Heroes *)(arrayOfVillains[currentIndex.row])).powerOfHero;
        
    }
}

@end
