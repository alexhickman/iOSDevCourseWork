//
//  ViewController.m
//  FridayChallenge
//
//  Created by Hickman on 10/16/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "Heroes.h"
#import "SecondViewController.h"

@interface ViewController ()
{
    NSArray *heroesArray;
    Heroes *currentHero;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Heroes *heroOne = [[Heroes alloc]init];
    heroOne.nameOfHero = @"Thor";
    heroOne.power = @"God of lightning";
    heroOne.colour = [UIColor redColor];
    Heroes *heroTwo = [[Heroes alloc]init];
    heroTwo.nameOfHero = @"SpiderMan";
    heroTwo.power = @"Webs";
    heroTwo.colour = [UIColor greenColor];
    Heroes *heroThree = [[Heroes alloc]init];
    heroThree.nameOfHero = @"Ironman";
    heroThree.power = @"Smart";
    heroThree.colour = [UIColor purpleColor];

    heroesArray = [[NSArray alloc]initWithObjects:heroOne, heroTwo, heroThree, nil];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"asdf";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = ((Heroes*)(heroesArray[indexPath.row])).nameOfHero;
    cell.detailTextLabel.text = ((Heroes*)(heroesArray[indexPath.row])).power;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    currentHero = heroesArray[indexPath.row];

    [self performSegueWithIdentifier:@"pushing" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"pushing"])
    {
        SecondViewController *svc = [segue destinationViewController];
        svc.currentHero = currentHero;
    }
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    //[self.tableView reloadData];

    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    UITableViewCell *selectedCell = [self.tableView cellForRowAtIndexPath:selectedIndexPath];
    
    if (selectedCell) {
        [UIView animateWithDuration:2 animations:^{
            selectedCell.backgroundColor = currentHero.colour;
        }];
    }

    
    
    [self.tableView beginUpdates];
    
    
    [self.tableView endUpdates];
}



@end
