//
//  CustomTVCell.h
//  TableViewExpandableHeroes
//
//  Created by Class on 10/14/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTVCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *labelName;

@property (weak, nonatomic) IBOutlet UILabel *labelPower;

@property (weak, nonatomic) IBOutlet UIImageView *imageOfHero;

@end
