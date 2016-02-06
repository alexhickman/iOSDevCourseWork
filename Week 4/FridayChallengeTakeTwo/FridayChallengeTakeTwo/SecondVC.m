//
//  SecondVC.m
//  FridayChallengeTakeTwo
//
//  Created by Hickman on 10/23/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "SecondVC.h"

@interface SecondVC ()
{
    NSMutableArray *arrayOfThings;
    NSString *stringToDisplay;
    NSIndexPath *currentIndex;
}
@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    currentIndex = [[NSIndexPath alloc]init];
    arrayOfThings = [[NSMutableArray alloc]init];
    
    //removing initial viewcontroller from the stack and making SecondVC the base
    NSMutableArray *arrayOfVCS = self.navigationController.viewControllers.mutableCopy;
    [arrayOfVCS removeObjectAtIndex:0];
    NSArray *regArrayOfVcs = [[NSArray alloc] initWithArray:arrayOfVCS];
    self.navigationController.viewControllers = regArrayOfVcs;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cellIdent";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(!cell)
    {
        cell = [[UITableViewCell alloc]init];
    }
    cell.textLabel.text = arrayOfThings[indexPath.row];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayOfThings count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    currentIndex = indexPath;
    stringToDisplay = arrayOfThings[indexPath.row];
    [self performSegueWithIdentifier:@"editPush" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"addModal"]) {
        ThirdVC *tvc = [segue destinationViewController];
        tvc.tableViewAddedDelegate = self;
    }
    
    if ([segue.identifier isEqualToString:@"editPush"]) {
        FourthVC *fvc = [segue destinationViewController];
        fvc.tableViewEditDelegate = self;
        fvc.textToDisplay = stringToDisplay;
    }
}

-(void)editTableViewWith:(NSString *)editedString
{
    [arrayOfThings replaceObjectAtIndex:currentIndex.row withObject:editedString];
    [self.tableView reloadData];
}

-(void)addStringToTableView:(NSString *)stringToAdd
{
    [arrayOfThings addObject:stringToAdd];
    [self.tableView reloadData];
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
