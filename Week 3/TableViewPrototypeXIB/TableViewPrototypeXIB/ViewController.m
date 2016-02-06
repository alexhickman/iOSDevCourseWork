//
//  ViewController.m
//  TableViewPrototypeXIB
//
//  Created by Hickman on 10/14/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "CustomTVCells.h"
#import "SecondTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

[self.tableView registerNib:[UINib nibWithNibName:@"SecondTableViewCell" bundle:nil] forCellReuseIdentifier:@"poop2"];
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"poop2";
    SecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell)
    {
        cell = [[SecondTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    //cell.textLabel.text = @"Yahoo!";
    return cell;
}

- (IBAction)buttonPressedStandard:(id)sender {
    NSLog(@"slfjalsfja;f");
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

@end
