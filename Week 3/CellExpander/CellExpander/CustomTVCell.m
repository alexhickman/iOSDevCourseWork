//
//  CustomTVCell.m
//  CellExpander
//
//  Created by Hickman on 10/14/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "CustomTVCell.h"

@implementation CustomTVCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)customButtonPressed:(id)sender {
    self.backgroundColor = self.colourToChangeTo;
}

@end
