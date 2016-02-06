//
//  SecondVC.h
//  FridayChallengeTakeTwo
//
//  Created by Hickman on 10/23/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThirdVC.h"
#import "FourthVC.h"


@interface SecondVC : UIViewController <UITableViewDataSource, UITableViewDelegate, tableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
