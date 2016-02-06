//
//  ViewController.h
//  delgationDrinks
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondVC.h"
#import "ThirdVC.h"
#import "Drinks.h"



@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, textToPassDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

