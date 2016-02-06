//
//  CustomTVCell.h
//  CellExpander
//
//  Created by Hickman on 10/14/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTVCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *labelColours;
@property (weak, nonatomic) IBOutlet UILabel *labelProverb;


//@property (nonatomic) CGFloat cellExpand;

@property (strong, nonatomic) UIColor *colourToChangeTo;

@end
