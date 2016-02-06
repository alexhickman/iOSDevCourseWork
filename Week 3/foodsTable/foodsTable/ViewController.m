//
//  ViewController.m
//  foodsTable
//
//  Created by Stephen Printup on 10/13/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *arrayOfFoods;
    NSMutableArray *arrayOfDrinks;
    BOOL search;
    NSMutableArray *arrayFilteredFoodResults;
    NSMutableArray *arrayFilteredDrinkResults;
    NSString *filteringItem;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //initialization
    arrayOfFoods = [[NSMutableArray alloc]init];
    arrayOfDrinks = [[NSMutableArray alloc]init];
    search = false;


    
    [arrayOfFoods addObject:@"apple"];
    [arrayOfFoods addObject:@"orange"];
    [arrayOfFoods addObject:@"banana"];
    [arrayOfFoods addObject:@"grapes"];
    [arrayOfFoods addObject:@"pizza"];
    [arrayOfFoods addObject:@"sprouts"];
    [arrayOfFoods addObject:@"pinneapple"];
    [arrayOfFoods addObject:@"cheese"];
    [arrayOfFoods addObject:@"nuts"];
    [arrayOfFoods addObject:@"lasagna"];
    
    //drinks
    [arrayOfDrinks addObject:@"beer"];
    [arrayOfDrinks addObject:@"juice"];
    [arrayOfDrinks addObject:@"water"];
    [arrayOfDrinks addObject:@"milk"];
    [arrayOfDrinks addObject:@"kombucha"];
    [arrayOfDrinks addObject:@"apple"];
    [arrayOfDrinks addObject:@"beer"];
    [arrayOfDrinks addObject:@"juice"];
    [arrayOfDrinks addObject:@"water"];
    [arrayOfDrinks addObject:@"milk"];
    [arrayOfDrinks addObject:@"kombucha"];
    [arrayOfDrinks addObject:@"beer"];
    [arrayOfDrinks addObject:@"juice"];
    [arrayOfDrinks addObject:@"water"];
    [arrayOfDrinks addObject:@"milk"];
    [arrayOfDrinks addObject:@"kombucha"];
    [arrayOfDrinks addObject:@"beer"];
    [arrayOfDrinks addObject:@"juice"];
    [arrayOfDrinks addObject:@"water"];
    [arrayOfDrinks addObject:@"milk"];
    [arrayOfDrinks addObject:@"kombucha"];
    [arrayOfDrinks addObject:@"beer"];
    [arrayOfDrinks addObject:@"juice"];
    [arrayOfDrinks addObject:@"water"];
    [arrayOfDrinks addObject:@"milk"];
    [arrayOfDrinks addObject:@"kombucha"];
    [arrayOfDrinks addObject:@"beer"];
    [arrayOfDrinks addObject:@"juice"];
    [arrayOfDrinks addObject:@"water"];
    [arrayOfDrinks addObject:@"milk"];
    [arrayOfDrinks addObject:@"kombucha"];

}
//rows
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (!search)
    {
        if (section == 0)
        {
            return [arrayOfFoods count];
        }
        else
        {
            return [arrayOfDrinks count];
        }
    }
    else
    {
        if (section == 0)
        {
            return [arrayFilteredFoodResults count];
        }
        else
        {
            return [arrayFilteredDrinkResults count];
        }
    }
}
//sections
- (NSInteger)numberOfSectionsInTableView:(UITableView * _Nonnull)tableView
{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"d";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    if (!search)
    {
        if (indexPath.section == 0)
        {
            cell.textLabel.text = arrayOfFoods[indexPath.row];
        }
        else
        {
            cell.textLabel.text = arrayOfDrinks[indexPath.row];
        }
    }
    else
    {
        if (indexPath.section == 0)
        {
            cell.textLabel.text = arrayFilteredFoodResults[indexPath.row];
        }
        else
        {
            cell.textLabel.text = arrayFilteredDrinkResults[indexPath.row];
        }
    }
    
    return cell;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0)
    {
        return @"Foods";
    }
    else
    {
        return @"Drinks";
    }
}

//textbox filter
- (IBAction)buttonFilterSubmit:(id)sender {
    filteringItem = self.textFieldFilter.text;
    arrayFilteredFoodResults = [[NSMutableArray alloc]init];
    arrayFilteredDrinkResults = [[NSMutableArray alloc]init];

    //set bool to true
    search = YES;
    
    for (NSString *item in arrayOfFoods)
    {
        if ([filteringItem isEqualToString:item])
        {
            [arrayFilteredFoodResults addObject:filteringItem];
        }
    }
    for (NSString *item in arrayOfDrinks) {
        if ([filteringItem isEqualToString:item])
        {
            [arrayFilteredDrinkResults addObject:filteringItem];
        }
    }
    [self.tableView reloadData];
}
//refresh button
- (IBAction)buttonRefresh:(id)sender {
    search = NO;
    [self.tableView reloadData];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    self.textFieldFilter.text = @"";
}


@end













