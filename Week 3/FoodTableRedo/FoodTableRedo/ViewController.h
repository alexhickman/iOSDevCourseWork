//
//  ViewController.h
//  FoodTableRedo
//
//  Created by Hickman on 10/13/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldFilter;
@property (weak, nonatomic) IBOutlet UITableView *tableViewItems;

@end

