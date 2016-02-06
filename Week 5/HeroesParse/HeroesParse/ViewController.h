//
//  ViewController.h
//  HeroesParse
//
//  Created by Hickman on 10/26/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "Heroes.h"
#import "SecondVC.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

