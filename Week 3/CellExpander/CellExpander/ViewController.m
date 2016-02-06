//
//  ViewController.m
//  CellExpander
//
//  Created by Hickman on 10/14/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "CustomTVCell.h"
#import "NewColour.h"

@interface ViewController ()
{
    NSMutableArray *colourArray;
    NSIndexPath *lastCellClicked;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    colourArray = [NewColour createColourArray];
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [colourArray count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([lastCellClicked isEqual:indexPath])
    {
        return 100;
    }
    else
    {
        return 40;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"something2";
    CustomTVCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[CustomTVCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.labelColours.text = ((NewColour *)colourArray[indexPath.row]).colourName;
    cell.labelProverb.text = ((NewColour *)colourArray[indexPath.row]).colourProverb;
    cell.colourToChangeTo = ((NewColour *)colourArray[indexPath.row]).colourActual;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    lastCellClicked = indexPath;
    
    [tableView beginUpdates];
    [tableView endUpdates];
    
}

@end
