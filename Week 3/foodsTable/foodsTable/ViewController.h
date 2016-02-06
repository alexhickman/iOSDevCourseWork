//
//  ViewController.h
//  foodsTable
//
//  Created by Stephen Printup on 10/13/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *textFieldFilter;

@end

