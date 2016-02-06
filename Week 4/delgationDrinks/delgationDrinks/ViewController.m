//
//  ViewController.m
//  delgationDrinks
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *drinksArray;
    Drinks *aDrink;
//    Drinks *newDrinkToDrink;
    NSIndexPath *currentItem;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    drinksArray = [[NSMutableArray alloc]init];
    
    Drinks *drinkone = [[Drinks alloc]init];
    drinkone.drinkName = @"beer";
    drinkone.drinkPhrase = @"mmm";
    Drinks *drinktwo = [[Drinks alloc]init];
    drinktwo.drinkName = @"soda";
    drinktwo.drinkPhrase = @"sweet";
    Drinks *drinkthree = [[Drinks alloc]init];
    drinkthree.drinkName = @"water";
    drinkthree.drinkPhrase = @"hydrate";
    
    [drinksArray addObject:drinkone];
    [drinksArray addObject:drinktwo];
    [drinksArray addObject:drinkthree];
    
//    newDrinkToDrink = [[Drinks alloc]init];
    
}

-(void)passText:(Drinks *)drinkToPass
{
    NSLog(@"%@ and %@", drinkToPass.drinkPhrase, drinkToPass.drinkName);
    
    [drinksArray replaceObjectAtIndex:currentItem.row withObject:drinkToPass];
    [self.tableView reloadData];
}

-(void)addItem:(Drinks *)drinkToAdd
{
    [drinksArray addObject:drinkToAdd];
    [self.tableView reloadData];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = ((Drinks*)[drinksArray objectAtIndex:indexPath.row]).drinkName;
    cell.detailTextLabel.text = ((Drinks *)[drinksArray objectAtIndex:indexPath.row]).drinkPhrase;
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [drinksArray count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    currentItem = indexPath;
    aDrink = [drinksArray objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"modals" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"modals"])
    {
        SecondVC *svc = [segue destinationViewController];
        svc.selectedDrink = aDrink;
        svc.delegateCustom = self;
    }
    if ([segue.identifier isEqualToString:@"pushing"])
    {
        ThirdVC *tvc = [segue destinationViewController];
//        tvc.aNewDrink = newDrinkToDrink;
        tvc.delegateCustom = self;
        
        
    }
    
}
@end
