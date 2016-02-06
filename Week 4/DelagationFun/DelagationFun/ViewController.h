//
//  ViewController.h
//  DelagationFun
//
//  Created by Hickman on 10/19/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableViewMain;

@end

