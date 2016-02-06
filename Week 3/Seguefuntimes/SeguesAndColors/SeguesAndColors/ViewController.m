//
//  ViewController.m
//  SeguesAndColors
//
//  Created by Tatiana Jamison on 10/15/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "Color.h"
#import "ColorVC.h"

@interface ViewController ()

{
    NSArray *arrayOfColors;
    Color *currentColor;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrayOfColors = [Color getArrayOfColors];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    UITableViewCell *selectedCell = [self.tableView cellForRowAtIndexPath:selectedIndexPath];
    
    if (selectedCell) {
        selectedCell.textLabel.text = currentColor.customName;
        selectedCell.backgroundColor = currentColor.customColor;
    }

}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    UITableViewCell *selectedCell = [self.tableView cellForRowAtIndexPath:selectedIndexPath];
    
    if (selectedCell) {
        [UIView animateWithDuration:2 animations:^{
            selectedCell.backgroundColor = [UIColor whiteColor];
        }];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.transform = CGAffineTransformRotate(cell.textLabel.transform, M_PI);
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    cell.textLabel.text = ((Color *)arrayOfColors[indexPath.row]).customName;
    
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayOfColors count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    currentColor = arrayOfColors[indexPath.row];
    
    UITableViewCell *selectedCell = [self.tableView cellForRowAtIndexPath:indexPath];
    
    [UIView animateWithDuration:2 animations:^{
        selectedCell.backgroundColor = currentColor.customColor;
    } completion:^(BOOL finished) {
        [self performSegueWithIdentifier:@"showColor" sender:self];
    }];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showColor"])
    {
        ColorVC *cvc = [segue destinationViewController];
        cvc.color = currentColor;
    }
}

- (IBAction)pressedRandom:(id)sender
{
    int randomRow = arc4random() % [arrayOfColors count];
    currentColor = arrayOfColors[randomRow];
    NSIndexPath *idx = [NSIndexPath indexPathForRow:randomRow inSection:0];
    [self.tableView selectRowAtIndexPath:idx animated:TRUE scrollPosition:UITableViewScrollPositionMiddle];
    
    [self tableView:self.tableView didSelectRowAtIndexPath:idx];
}

@end
