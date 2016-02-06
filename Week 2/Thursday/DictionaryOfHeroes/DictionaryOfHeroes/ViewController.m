//
//  ViewController.m
//  DictionaryOfHeroes
//
//  Created by Hickman on 10/8/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "ViewController.h"
#import "Heroes.h"

@interface ViewController ()
{
    Heroes *createNewHero;
    NSMutableDictionary *heroDictionary;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Heroes *newHero = [[Heroes alloc]init];
    newHero.heroName = @"Superman";
    newHero.heroOrigin = @"Crypton";
    
    Heroes *newHeroTwo = [[Heroes alloc]init];

    newHeroTwo.heroName = @"Batman";
    newHeroTwo.heroOrigin = @"Gotham";

    heroDictionary = [[NSMutableDictionary alloc]init];
    [heroDictionary setObject:newHero forKey:@"Superman"];
    [heroDictionary setObject:newHeroTwo forKey:@"Batman"];
}

- (IBAction)buttonSubmit:(id)sender {
    
    if ([self isHeroUnique])
    {
    createNewHero = [[Heroes alloc]init];
    createNewHero.heroName = self.textName.text;
    createNewHero.heroOrigin = self.textCityOfOrigin.text;
    [heroDictionary setObject:createNewHero forKey:self.textName.text];
    }
    else{
        NSLog(@"Hero name is not unique");
    }
}
- (IBAction)buttonListOfProperties:(id)sender {
    for (NSString *heroName in heroDictionary) {
        NSLog(@"Name: %@, Origin: %@.", ((Heroes *)[heroDictionary objectForKey:heroName]).heroName, ((Heroes *)[heroDictionary objectForKey:heroName]).heroOrigin);
    }
    
}

-(BOOL)isHeroUnique
{
    for (NSString *heroName in heroDictionary) {
        if ([heroName isEqualToString: self.textName.text]) {
            return NO;
        }
    }
    return YES;
}

@end
