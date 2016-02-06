//
//  ViewController.m
//  TableViewEditing
//
//  Created by Hickman on 10/13/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *arrayOfInfo;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrayOfInfo = [[NSMutableArray alloc]init];
    [arrayOfInfo addObject:@"alsdjkf"];
    [arrayOfInfo addObject:@";laksjfd"];
    [arrayOfInfo addObject:@";laksjdf"];
    [arrayOfInfo addObject:@"heuroh"];
    [arrayOfInfo addObject:@"hgiueal"];
    [arrayOfInfo addObject:@"ghaoeruh"];
    [arrayOfInfo addObject:@"jagjfl"];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *stringIdentifier = @"cell"; // can be called a "Constant"
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:stringIdentifier];
   
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:stringIdentifier];
    }
    
    cell.textLabel.text = [arrayOfInfo objectAtIndex:indexPath.row];

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayOfInfo count];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *arrayOfPaths = @[indexPath];
    
    [tableView beginUpdates];
    [self.tableView deleteRowsAtIndexPaths:arrayOfPaths withRowAnimation:UITableViewRowAnimationNone];

    [arrayOfInfo removeObjectAtIndex:indexPath.row];

    [tableView endUpdates];
    
}

- (IBAction)buttonGo:(id)sender
{
    self.tableView.editing = !self.tableView.editing;
    
}

@end
