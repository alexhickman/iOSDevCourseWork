//
//  ViewController.m
//  TableViewExpandableHeroes
//
//  Created by Class on 10/14/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "ViewController.h"
#import "Heroes.h"
#import "CustomTVCell.h"
#import "SecondCustomTVCell.h"


@interface ViewController ()
{
    NSMutableArray *arrayOfHeroes;
    NSIndexPath *currentPath;
    NSMutableArray *tempGoodArray;
    NSMutableArray *tempBadArray;
    BOOL goodOrBad;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    currentPath = [[NSIndexPath alloc]init];
    tempGoodArray = [[NSMutableArray alloc]init];
    tempBadArray = [[NSMutableArray alloc]init];
    goodOrBad = YES;
    
    [self.tableView registerNib:[UINib nibWithNibName: @"SecondCustomTVCell" bundle:nil] forCellReuseIdentifier: @"secondCell"];
    
    arrayOfHeroes = [[NSMutableArray alloc]init];
    Heroes *heroOne = [[Heroes alloc]init];
    heroOne.nameOfHero = @"Thor";
    heroOne.powerOfHero = @"Mjloinir";
    heroOne.imageOfHero = [UIImage imageNamed:@"thor"];
    heroOne.isGood = YES;
    
    Heroes *heroTwo = [[Heroes alloc]init];
    heroTwo.nameOfHero = @"Insector Gadget";
    heroTwo.powerOfHero = @"Mighty Toolbelt";
    heroTwo.imageOfHero = [UIImage imageNamed:@"Inspector"];
    heroTwo.isGood = YES;

    
    Heroes *heroThree = [[Heroes alloc]init];
    heroThree.nameOfHero = @"Kamala Khan";
    heroThree.powerOfHero = @"Embiggen";
    heroThree.imageOfHero = [UIImage imageNamed:@"Kamala"];
    heroThree.isGood = YES;

    
    Heroes *villainOne = [[Heroes alloc]init];
    villainOne.nameOfHero = @"Loki";
    villainOne.powerOfHero = @"Trickery";
    villainOne.imageOfHero = [UIImage imageNamed:@"Lokiimg"];
    villainOne.isGood = NO;

    
    Heroes *villainTwo = [[Heroes alloc]init];
    villainTwo.nameOfHero = @"Galactus";
    villainTwo.powerOfHero = @"Power Cosmic";
    villainTwo.imageOfHero = [UIImage imageNamed:@"Galactusimg"];
    villainTwo.isGood = NO;

    Heroes *villainThree = [[Heroes alloc]init];
    villainThree.nameOfHero = @"Hela";
    villainThree.powerOfHero = @"Leader of Hel";
    villainThree.imageOfHero = [UIImage imageNamed:@"Helaimg"];
    villainThree.isGood = NO;

    
    [arrayOfHeroes addObject: heroOne];
    [arrayOfHeroes addObject: heroTwo];
    [arrayOfHeroes addObject: heroThree];
    [arrayOfHeroes addObject: villainOne];
    [arrayOfHeroes addObject: villainTwo];
    [arrayOfHeroes addObject: villainThree];

    for (Heroes *greatSeparator in arrayOfHeroes) {
        if (greatSeparator.isGood == YES) {
            [tempGoodArray addObject:greatSeparator];
            continue;
        }
        else if (greatSeparator.isGood == NO)
        {
            [tempBadArray addObject:greatSeparator];
        }
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return [tempGoodArray count];
    }
    else
    {
        return [tempBadArray count];
    }
    //   return [arrayOfHeroes count];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if (((Heroes *)arrayOfHeroes[indexPath.row]).isGood) {
    if (indexPath.section == 0) {
        NSString *cellIdentifier = @"cell";
        CustomTVCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell)
        {
            cell = [[CustomTVCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        cell.labelName.text = ((Heroes *)tempGoodArray[indexPath.row]).nameOfHero;
        cell.labelPower.text= ((Heroes *)tempGoodArray[indexPath.row]).powerOfHero;
        cell.imageOfHero.image = ((Heroes *)tempGoodArray[indexPath.row]).imageOfHero;
        return cell;
        }
   
    else
    {
        NSString *cellIdentifier = @"cell";
        CustomTVCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell)
        {
            cell = [[CustomTVCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        cell.labelName.text = ((Heroes *)tempBadArray[indexPath.row]).nameOfHero;
        cell.labelPower.text= ((Heroes *)tempBadArray[indexPath.row]).powerOfHero;
        cell.imageOfHero.image = ((Heroes *)tempBadArray[indexPath.row]).imageOfHero;
        return cell;
    }
//    }
//    else
//    {
//    NSString *cellIdentifier = @"secondCell";
//    SecondCustomTVCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
//    if (!cell) {
//        cell = [[SecondCustomTVCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//    }
//    
//    cell.labelVillainName.text = ((Heroes *)arrayOfHeroes[indexPath.row]).nameOfHero;
//    cell.labelVillainPower.text= ((Heroes *)arrayOfHeroes[indexPath.row]).powerOfHero;
//    cell.imageVillain.image = ((Heroes *)arrayOfHeroes[indexPath.row]).imageOfHero;
//  
//    return cell;
//    
//    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView beginUpdates];
    currentPath = indexPath;
    [self.tableView endUpdates];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([currentPath isEqual:indexPath]) {
        return 150;
    }
    else {
        return 65;
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"Good";
    }
    else
    return @"Bad";
}

@end
