//
//  ViewController.m
//  FoodTableRedo
//
//  Created by Hickman on 10/13/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *groceryList;
    NSArray *filteredArray;
    BOOL searching;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    searching = false;
    groceryList = [[NSMutableArray alloc]init];
    [groceryList addObject:@"Milk"];
    [groceryList addObject:@"Cookies"];
    [groceryList addObject:@"Cheese"];
    [groceryList addObject:@"Eggs"];
    [groceryList addObject:@"Beer"];
    [groceryList addObject:@"Chocolate Milk Cookies"];
    [groceryList addObject:@"Chocolate Milk"];


}

- (IBAction)buttonFilter:(id)sender
{
    searching = true;
    NSString *filterWord = self.textFieldFilter.text;
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] %@", filterWord];
    filteredArray = [groceryList filteredArrayUsingPredicate:predicate];
    [self.tableViewItems reloadData];
    
  }


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (!searching) {
        return [groceryList count];
    }
    else
    {
        return [filteredArray count];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"SUP!";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    if (!searching) {
        cell.textLabel.text = groceryList[indexPath.row];
    }
    else
    {
        cell.textLabel.text = filteredArray[indexPath.row];
    }
    
    return cell;
}


@end
