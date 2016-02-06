//
//  ViewController.h
//  TableViewExpandableHeroes
//
//  Created by Class on 10/14/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

