//
//  ViewController.m
//  HeroLogger
//
//  Created by Class on 10/7/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "ViewController.h"
#import "Hero.h"


@interface ViewController ()

{
    NSMutableArray *listOfHeroes;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    listOfHeroes = [[NSMutableArray alloc]init];

    [listOfHeroes addObject:[Hero createHeroWithName:@"Thor" power:@"God of Thunder" spandex:@"Armor" strength:100 agility:20]];
    
    [listOfHeroes addObject:[Hero createHeroWithName:@"Iron Man" power:@"Smartypants" spandex:@"Metal fly suit" strength:90 agility:40]];
    
    [listOfHeroes addObject:[Hero createHeroWithName:@"Black Widow" power:@"Super Spy" spandex:@"Black" strength:60 agility:100]];
}

- (IBAction)buttonName:(id)sender {

    for (Hero *heroName in listOfHeroes) {
        NSLog(@"%@", heroName.name);
    }

}

- (IBAction)buttonPower:(id)sender {
    for (Hero *heroPower in listOfHeroes) {
        NSLog(@"%@", heroPower.power);
    }
    
}

- (IBAction)buttonSpandex:(id)sender {
    for (Hero *heroSpandex in listOfHeroes) {
        NSLog(@"%@", heroSpandex.spandexOfChoice);
    }

}

- (IBAction)buttonStrength:(id)sender {
    for (Hero *heroStrength in listOfHeroes) {
        NSLog(@"%d", heroStrength.strength);
    }

}

- (IBAction)buttonAgility:(id)sender {
    for (Hero *heroAgility in listOfHeroes) {
        NSLog(@"%d", heroAgility.agility);
    }

}

- (IBAction)buttonCreateHero:(id)sender {
    
    NSString *inputName = self.textFieldName.text;
    NSString *inputPower = self.textFieldPower.text;
    NSString *inputSpandex = self.textFieldSpandex.text;
    int inputStrength = self.textFieldStrength.text.intValue;
    int inputAgility = self.textFieldAgility.text.intValue;
    
    if (inputName.length == 0) {
        self.labelErrorMessage.text = @"You didn't enter a field";
    }
    if (inputPower.length == 0) {
        self.labelErrorMessage.text = @"You didn't enter a field";
    }
    if (inputSpandex.length == 0) {
        self.labelErrorMessage.text = @"You didn't enter a field";
    }
    if (self.textFieldStrength.text.length == 0) {
        self.labelErrorMessage.text = @"You didn't enter a field";
    }
    if (self.textFieldAgility.text.length == 0) {
        self.labelErrorMessage.text = @"You didn't enter a field";
    }
    else {
        [listOfHeroes addObject:[Hero createHeroWithName:inputName power: inputPower spandex: inputSpandex strength:inputStrength agility: inputAgility]];
        self.labelErrorMessage.text = @"";
        }

}


@end
