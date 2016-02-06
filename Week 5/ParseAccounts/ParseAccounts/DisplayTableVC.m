//
//  DisplayTableVC.m
//  ParseAccounts
//
//  Created by Tatiana Jamison on 10/27/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "DisplayTableVC.h"
#import "APIManager.h"

@implementation DisplayTableVC

{
    NSMutableArray *arrayOfGames;
    NSDate *lastCheckedIn;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    lastCheckedIn = [NSDate date];
    
    if (arrayOfGames)
    {
        [self updateGames];
    }
    else // arrayOfGames is empty
    {
        [self startDownloadOfGames];
    }
    
    UIBarButtonItem *logoutButton = [[UIBarButtonItem alloc] initWithTitle:@"Logout" style:UIBarButtonItemStylePlain target:self action:@selector(logout)];
    self.navigationItem.leftBarButtonItem = logoutButton;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    BoardGame *gameForIndex = [arrayOfGames objectAtIndex:indexPath.row];
    
    cell.textLabel.text = gameForIndex.nameOfGame;
    cell.detailTextLabel.text = gameForIndex.descriptionOfGame;
    
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayOfGames count];
}

- (void)startDownloadOfGames
{
    arrayOfGames = [[NSMutableArray alloc] init];
    
    NSLog(@"Starting download of games...");
    
    [APIManager retrieveObjectsOfClass:@"BoardGame" currentTime:lastCheckedIn withSuccess:^(BOOL success, NSMutableArray *processedGames, NSDate *lastUpdated) {
        if (success) {
            arrayOfGames = processedGames;
            lastCheckedIn = lastUpdated;
            
            [self.tableView reloadData];
        }
    }];
}

- (void)updateGames
{
    NSLog(@"Starting update of games...");
    
    [APIManager addNewObjectsOfClass:@"BoardGame" againstArray:arrayOfGames currentTime:lastCheckedIn withSuccess:^(BOOL success, NSMutableArray *processedGames, NSDate *time) {
        if (success) {
            arrayOfGames = processedGames;
            lastCheckedIn = time;
            [self.tableView reloadData];
        }
    }];
    
    [APIManager compareObjectsOfClass:@"BoardGame" againstArray:arrayOfGames currentTime:lastCheckedIn withSuccess:^(BOOL success, NSMutableArray *processedGames, NSDate *time) {
        if (success) {
            arrayOfGames = processedGames;
            lastCheckedIn = time;
            [self.tableView reloadData];
        }
    }];
}

- (IBAction)pressedAdd:(id)sender {
    [self performSegueWithIdentifier:@"goToAddView" sender:self];
}

- (IBAction)pressedReload:(id)sender {
    [self updateGames];
    [self.tableView reloadData];
}

- (void)logout
{
    [PFUser logOut];
    [self.navigationController popViewControllerAnimated:TRUE];
    NSLog(@"Logging out...");
}

@end
